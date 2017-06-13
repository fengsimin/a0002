<?php
//Copyright (c) 2016 iFeiwu.com
 class TokenAuth implements iAuthenticate { function __isAuthenticated() { $token = $_GET["\x74\x6f\153\145\156"]; return $token && $token == TokenAuth::key() ? TRUE : FALSE; } function key() { return require "\x74\x6f\153\145\156\56\160\150\x70"; } }
