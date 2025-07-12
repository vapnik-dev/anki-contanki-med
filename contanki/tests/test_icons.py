# pylint: disable=missing-docstring

from ..controller import Controller, get_controller_list
from ..icons import ButtonIcon, get_button_icon
from . import test


@test
def test_can_get_all_button_icons():
    for controller in get_controller_list():
        for button in Controller(controller).buttons.values():
            get_button_icon(Controller(controller), button)
            ButtonIcon(None, button, Controller(controller))
