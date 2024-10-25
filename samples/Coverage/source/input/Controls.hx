package input;

import flixel.addons.input.FlxControls;
import flixel.addons.input.FlxControlInputType;
import flixel.addons.input.FlxControlInputType.FlxMouseInputType.Motion as MouseMove;
import flixel.addons.input.FlxControlInputType.FlxKeyInputType.Multi as MultiKey;
import flixel.addons.input.FlxControlInputType.FlxGamepadInputType.Multi as MultiPad;
import flixel.addons.input.FlxControlInputType.FlxVirtualPadInputID as VPad;
import flixel.input.gamepad.FlxGamepadInputID as GPad;
import flixel.input.keyboard.FlxKey as Key;

/**
 * A list of actions the user can perform via inputs.
 * `@:analog` actions expect inputs like gamepad triggers, joysticks, and mice.
 * `@:inputs` determines the default inputs mapped to this action (can be swapped at runtime)
 */
enum Action
{
    /** Moves the player up, also used to navigate menus */
    @:inputs([Key.UP   , Key.W, DPAD_UP   , LEFT_STICK_DIGITAL_UP   , VPad.UP    ]) UP;
    /** Moves the player down, also used to navigate menus */
    @:inputs([Key.DOWN , Key.S, DPAD_DOWN , LEFT_STICK_DIGITAL_DOWN , VPad.DOWN  ]) DOWN;
    /** Moves the player left, also used to navigate menus */
    @:inputs([Key.LEFT , Key.A, DPAD_LEFT , LEFT_STICK_DIGITAL_LEFT , VPad.LEFT  ]) LEFT;
    /** Moves the player right, also used to navigate menus */
    @:inputs([Key.RIGHT, Key.D, DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, VPad.RIGHT ]) RIGHT;
    /** A test action */
    @:inputs([RIGHT_ANALOG_STICK, MouseMove(), [K, I, L, J], MultiPad(B, X, A, Y)]) @:analog(x2, y2) CAM2;
    @:inputs([RIGHT_ANALOG_STICK, MouseMove(), [K, I, L, J], MultiPad(B, X, A, Y)]) @:analog( x,  y) CAM;
    @:inputs([RIGHT_TRIGGER]) @:analog(vroom)   GAS;
    @:inputs([LEFT_TRIGGER])  @:analog(value) BREAKS;
}

class Controls extends FlxControls<Action> {}
// {
//     function getDefaultMappings():ActionMap<Action>
//     {
//         return
//             [ Action.UP    => [Key.UP   , Key.W, DPAD_UP   , LEFT_STICK_DIGITAL_UP   , VPad.UP    ]
//             , Action.DOWN  => [Key.DOWN , Key.S, DPAD_DOWN , LEFT_STICK_DIGITAL_DOWN , VPad.DOWN  ]
//             , Action.LEFT  => [Key.LEFT , Key.A, DPAD_LEFT , LEFT_STICK_DIGITAL_LEFT , VPad.LEFT  ]
//             , Action.RIGHT => [Key.RIGHT, Key.D, DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, VPad.RIGHT ]
//             , Action.JUMP  => [Key.L    , Key.X, GPad.A    , VPad.B ]
//             , Action.SHOOT => [Key.K    , Key.Z, GPad.X    , VPad.Y ]
//             , Action.ACCEPT=> [Key.K    , Key.Z, GPad.A    , VPad.A ]
//             , Action.BACK  => [Key.L    , Key.X, GPad.B    , VPad.B ]
//             , Action.PAUSE => [Key.ENTER       , START     , VPad.X ]
//             , Action.CAM   => [RIGHT_ANALOG_STICK, Mouse(Motion())]
//             , Action.GAS   => [Mouse(Motion(X))]
//             , Action.BREAKS=> [Mouse(Motion(Y))]
//             ];
//     }
// }