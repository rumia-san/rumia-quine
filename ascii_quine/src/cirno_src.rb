bitmap_index=0;
eval$s=%w(
  s=%(
    bitmap_index = #{(bitmap_index + 1) % 3};
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
  base64_strs = [
    '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',
  ];
  require "base64";
  require "zlib";
  zipped_str = Base64.decode64(base64_strs[bitmap_index]);
  raw_str = Zlib.inflate(zipped_str);
  s += 'p=%q' + 64.chr + base64_strs[0];
  $print_bitmap[s, raw_str, 128 / 8];
  print(64.chr);
)*"";
