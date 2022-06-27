from robot.api import logger
import subprocess

def get_platform_info(binary_path):
    uname_result: str = subprocess.check_output(["uname", "-m"]).decode("utf-8").strip()
    file_result = subprocess.check_output(["file", binary_path]).decode("utf-8").strip().split(",")
    interpreter = None
    for item in file_result:
        if "interpreter" in item:
            interpreter = item.strip().split(" ")[1]
            break
    return uname_result, interpreter


def Check_binary_ARCH(args: str):
    logger.debug("works")
    logger.debug(repr(args))
    expected_arch, expected_interpreter, binary_path = args.split(" ")
    real_arch, real_interpreter = get_platform_info(binary_path)
    logger.debug(f"{expected_arch=}, {real_arch=}, {expected_interpreter=}, {real_interpreter=}")
    assert (expected_arch, expected_interpreter) == (real_arch, real_interpreter)
