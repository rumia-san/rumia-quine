eval$s=%w(
  s=%(
    eval$s=%w(#{$s})*"";
  );
  $print_8bits = -> (string, bitmap_char) {
    bitmap = bitmap_char.ord;
    mask = 1 << 7;
    i = 0;
    while (mask != 0);
    if (bitmap & mask) != 0;
      print(string[i]);
      i += 1;
    else;
      print(32.chr);
    end;
    mask = mask >> 1;
    end;
    return (i);
  };

  $print_line = -> (string, bitmap_line) {
    index = 0;
    bitmap_line.each_char { |char|
      index += $print_8bits[string[index..-1], char];
    };
    print("\n");
    return (index);
  };

  $print_bitmap = -> (string, bitmap_string, line_len) {
    index = 0;
    while (!bitmap_string.empty?);
      index += $print_line[string[index..-1], bitmap_string.slice!(0, line_len)];
    end;
  };
  base64_str = 'eJyN1DFrFUEQAOC9bPAUxHtg8yCB+wEWChZRCNnC1sJfIOkstBAsRJDsWtkI/gAbO1sL6+QEwdIfkCIXlSAo3BXCu5DLjTO7dzu7y3vq8prv9m7e7O7sAAAIGjMRj9S3Em8nfp54L/GQGFKbiBlUIUzkEroMavZtgNAK13QMLX+N45Qtj+gBv19oax9/G+L5Z87wdvQ3iF7IPseWr0ePC5Jl7AtqtIg9JO5XeM2lCz8S+3xHt6sMy91FbhKn84nPEg86dn8N3ofuDrU35dd9hdj13g12r7pfQ+BWnzYfvBW6b+7O2LXu4ZVgVxgy8HAP/SmYn2lovrPP5woavz2iPH+kYdGxo+MTawoOAH/TB3heWGD7Z/68ttzxFZMf0P6A/jgFaBqchevV5A006Hf1ZPr+RL/wCT1EL7TxF/KOdTX3xu8XB/Wm90973Je9Dyl+d9Ev4A3Oqp59E4upmNLH8YSKa8dz/SlZcUPYIt9f975K3heh2/D+S/LO9P5juqCt6LNxA2pyJ3qcoEGPqfh74RZ0yTh3IjdkJagihqwTLgD1HbwxErdrl/zb+SWaKqakbcUT/IKmgKpypuMrxdjGSlfeZLvrhfMVm53zUejczdMJV8ssOZ51xjbLLJyVmaytueVq2w7Y6r/MLb20nifeTOwrhhY8hM6tCxM795aJs6WWlQ9o75OsV1rb+7Yb2ojMx6MFotuVLqm//8UFlaxMzf+fW1exeT2upANn/7BIrclV6DqySlySOT9MOMofEzRCcs/CBNvIAo13RvwBwgth6A==';
  require "base64";
  require "zlib";
  zipped_str = Base64.decode64(base64_str);
  raw_str = Zlib.inflate(zipped_str);
  s += 'p=%q' + 64.chr + base64_str * 5;
  $print_bitmap[s, raw_str, 128 / 8];
  print(64.chr);
)*"";
