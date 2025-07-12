"""An add-on for Anki, adding support for controllers and gamepads"""

import os

from aqt import mw

from .contanki import Contanki
from .utils import user_controllers_path, user_profile_path

assert mw is not None

if not os.path.exists(user_profile_path):
    os.mkdir(user_profile_path)

if not os.path.exists(user_controllers_path):
    os.mkdir(user_controllers_path)

mw.contanki = Contanki(mw)  # type: ignore
