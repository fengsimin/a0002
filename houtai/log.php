<?php
//Copyright (c) 2016 iFeiwu.com
 class Log extends Item { function __construct() { $this->table = "\x6c\157\147"; parent::__construct(); } protected function callbackPageAfter(&$data) { $data["\154\151\163\x74"] = $this->_getData($data["\x6c\151\x73\164"]); } protected function getLately() { $list = $this->db->select($this->table)->where("\160\x69\144\40\75\x20\x30")->order("\x63\x74\151\x6d\x65\x20\104\105\x53\103")->limit(4)->all(); return $this->success($this->_getData($list)); } protected function postDelete($request_data) { goto nxJV4; XbnT2: $ids = $request_data["\x69\x64"]; goto S8A1M; msdJj: return $this->success(); goto kecY4; HJ42O: if (count($error) === 0) { goto ByKoo; } goto Chh6h; loCEw: goto gQVGt; goto CV42n; kecY4: gQVGt: goto suAZ6; XErEB: xuBx9: goto HJ42O; nxJV4: $error = array(); goto XbnT2; CV42n: ByKoo: goto msdJj; S8A1M: foreach ($ids as $id) { goto ZjM64; ZjM64: if (!$this->db->delete($this->table, array("\x69\144", "\x3d", $id))->is()) { goto E7e8E; } goto QShOr; zBxdo: E7e8E: goto o47rT; QShOr: $error[] = $id; goto zBxdo; o47rT: zqZOP: goto RQtXE; RQtXE: } goto XErEB; Chh6h: return $this->error(); goto loCEw; suAZ6: } private function _getData($data) { goto p60SW; p60SW: foreach ($data as $key => $value) { goto dyKVL; rDEIX: LbAAX: goto s0QrJ; ZzgJS: $title = $value["\x74\x69\164\x6c\145"]; goto RtNTV; Gv8bA: SL9fp: goto JwoTx; RtNTV: $url = $value["\x75\162\x6c"]; goto Q7xoq; dyKVL: $type = $value["\x74\171\160\145"]; goto ZzgJS; Q7xoq: switch ($type) { case "\154\x6f\147\151\156": goto RGTiP; RGTiP: $data[$key]["\151\143\x6f\x6e"] = "\x61\143\143\x6f\165\x6e\164"; goto rPNQl; kVIg1: goto zg4PI; goto wk2HC; rPNQl: $data[$key]["\x74\x69\164\154\x65"] = "\xe7\x99\273\xe5\205\245\347\275\221\xe7\253\x99\345\x90\216\345\217\260"; goto kVIg1; wk2HC: case "\141\144\144": goto AQgpb; lml6i: goto zg4PI; goto OKN8Y; oRtUM: $data[$key]["\x74\151\164\154\145"] = "\346\xb7\xbb\345\212\xa0\xe6\225\xb0\346\x8d\256\x3a\x26\x6e\x62\163\160\73\74\141\x20\x68\x72\x65\x66\x3d\x22" . ($url . "\46\151\144\75" . $value["\164\141\x62\x6c\x65\137\x69\144"]) . "\x22\x3e" . $title . "\74\x2f\x61\x3e"; goto lml6i; AQgpb: $data[$key]["\151\143\157\x6e"] = "\x70\x6c\165\x73"; goto oRtUM; OKN8Y: case "\x75\x70\x64\x61\x74\145": goto mDKUx; mDKUx: $data[$key]["\151\143\157\x6e"] = "\x70\x65\156\x63\151\154"; goto wSdCC; qpOuj: goto zg4PI; goto YXe90; wSdCC: $data[$key]["\164\151\164\154\x65"] = "\346\233\264\xe6\226\xb0\xe6\x95\260\346\215\xae\x3a\46\x6e\142\163\x70\x3b\74\141\x20\150\162\x65\146\75\42" . $url . "\42\76" . $title . "\x3c\x2f\x61\76"; goto qpOuj; YXe90: case "\162\x65\x6d\157\x76\x65": goto Abg28; Abg28: $data[$key]["\x69\143\x6f\156"] = "\x64\145\x6c\x65\164\145\55\146\157\x72\x65\x76\x65\162"; goto eBsEz; ryKAA: goto zg4PI; goto IxJTd; eBsEz: $data[$key]["\x74\151\x74\x6c\145"] = "\347\xa7\273\xe9\x99\xa4\x26\156\142\163\160\73\x3c\141\40\x68\x72\145\x66\x3d\42" . $url . "\42\76" . $title . "\x3c\x2f\x61\x3e\46\x6e\142\163\160\x3b\346\x9d\xa1\xe6\x95\xb0\346\x8d\256\345\x88\xb0\345\233\x9e\346\224\xb6\347\253\x99"; goto ryKAA; IxJTd: case "\x72\x65\160\154\171": goto T5sDQ; EingB: $data[$key]["\164\151\164\154\145"] = "\xe4\273\216\345\x9b\236\xe6\224\266\347\xab\231\xe6\201\xa2\xe5\xa4\215\x26\x6e\142\x73\x70\73\74\141\40\x68\162\x65\x66\75\x22" . $url . "\42\x3e" . $title . "\74\x2f\x61\x3e\46\x6e\142\163\x70\73\346\235\xa1\xe6\225\260\346\x8d\xae"; goto ebTIe; T5sDQ: $data[$key]["\x69\143\157\156"] = "\162\x65\x70\154\171"; goto EingB; ebTIe: goto zg4PI; goto F9nFT; F9nFT: case "\144\145\154\x65\x74\x65": $data[$key]["\151\143\157\156"] = "\x64\x65\x6c\145\164\x65\55\x76\141\162\x69\141\x6e\164"; $data[$key]["\164\151\164\154\145"] = "\345\xbd\xbb\345\xba\225\345\x88\xa0\xe9\231\244\x26\156\142\x73\160\73\74\141\x20\150\x72\x65\146\75\x22" . $url . "\x22\x3e" . $title . "\x3c\57\141\x3e\46\x6e\x62\x73\x70\x3b\xe6\235\xa1\xe6\225\xb0\xe6\215\xae"; default: goto zg4PI; } goto rDEIX; s0QrJ: zg4PI: goto Gv8bA; JwoTx: } goto w3JFI; renPa: return $data; goto AhNv5; w3JFI: o6CrU: goto renPa; AhNv5: } }