test_rldicl_1:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 24, 0
  blr
  #_ REGISTER_OUT r3 0x6789abcdef012345
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_2:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 24, 8
  blr
  #_ REGISTER_OUT r3 0x0089abcdef012345
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_3:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 24, 63
  blr
  #_ REGISTER_OUT r3 0x0000000000000001
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_4:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 0, 0
  blr
  #_ REGISTER_OUT r3 0x0123456789abcdef
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_5:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 0, 63
  blr
  #_ REGISTER_OUT r3 0x0000000000000001
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_6:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 0, 8
  blr
  #_ REGISTER_OUT r3 0x0023456789abcdef
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_7:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 63, 0
  blr
  #_ REGISTER_OUT r3 0x8091a2b3c4d5e6f7
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_8:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 63, 63
  blr
  #_ REGISTER_OUT r3 0x0000000000000001
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_9:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicl r3, r4, 31, 0
  blr
  #_ REGISTER_OUT r3 0xc4d5e6f78091a2b3
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicl_10:
  #_ REGISTER_IN r4 0x16300000
  rldicl r3, r4, 58, 6
  blr
  #_ REGISTER_OUT r3 0x58C000
  #_ REGISTER_OUT r4 0x16300000

test_srdi_1:
  #_ REGISTER_IN r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  srdi r3, r3, 0
  srdi r4, r4, 0
  blr
  #_ REGISTER_OUT r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_srdi_2:
  #_ REGISTER_IN r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  srdi r3, r3, 1
  srdi r4, r4, 1
  blr
  #_ REGISTER_OUT r3 0x7fffffffffffffff
  #_ REGISTER_OUT r4 0x0091a2b3c4d5e6f7

test_srdi_3:
  #_ REGISTER_IN r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  srdi r3, r3, 32
  srdi r4, r4, 32
  blr
  #_ REGISTER_OUT r3 0x00000000ffffffff
  #_ REGISTER_OUT r4 0x0000000001234567

test_srdi_4:
  #_ REGISTER_IN r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  srdi r3, r3, 63
  srdi r4, r4, 63
  blr
  #_ REGISTER_OUT r3 0x0000000000000001
  #_ REGISTER_OUT r4 0x0000000000000000