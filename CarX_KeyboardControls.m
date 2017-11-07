global key
InitKeyboard();

while 1
    pause(.1);
    switch key
        case 'uparrow'
            brick.MoveMotor('BD',50);
        case 'downarrow'
            brick.MoveMotor('BD',-50);
        case 'leftarrow'
            brick.MoveMotor('B',50);
            brick.MoveMotor('D',-50);
        case 'rightarrow'
            brick.MoveMotor('B',-50);
            brick.MoveMotor('D',50);
        case 0      %No key is pressed.
            brick.MoveMotor('BCD',0);
        case 'q'    %Press q key to quit.
            break;
        case 'w'
            brick.MoveMotor('C', 10);
            brick.WaitForMotor('C');
        case 's'
            brick.MoveMotor('C',-10);
            brick.WaitForMotor('C');
    end
end
CloseKeyboard();
        