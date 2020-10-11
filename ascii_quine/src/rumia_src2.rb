bitmap_index=0;
eval$s=%w(
  s=%(
    bitmap_index = #{(bitmap_index + 1) % 2};
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
    'eJyN1DFrFUEQAOC9bPAUxHtg8yCB+wEWChZRCNnC1sJfIOkstBAsRJDsWtkI/gAbO1sL6+QEwdIfkCIXlSAo3BXCu5DLjTO7dzu7y3vq8prv9m7e7O7sAIARNGYiHqlvJd5O/DzxXuIhMaQ2ETOoQpjIJXQZ1OzbAKEVABxDy1/jOGXLI3rA7xfa2sffhnj+mTO8Hf0Noheyz7Hl69HjgmQZ+4IaLWIPifsVXnPpwo/EPt/R7SrDcneRm8TpfOKzxIOO3V+D96G7Q+1N+XVfIXa9d4Pdq+7XELjVp80Hb4Xum7szdq17eCXYFYYMPNxDfwrmZxqa7+zzuYLGb48ozx9pWHTs6PjEmoIDwN/0AZ4XFtj+mT+vLXd8xeQHtD+gP04BmgZn4Xo1eQMN+l09mb4/0S98Qg/RC238hbxjXc298fvFQb3p/dMe92XvQ4rfXfQLeIOzqmffxGIqpvRxPKHi2vFcf0pW3BC2yPfXva+S90XoNrz/krwzvf+YLmgr+mzcgJrciR4naNBjKv5euAVdMs6dyA1ZCaqIIeuEC0B9B2+MxO3aJf92fommiilpW/EEv6ApoKqc6fhKMbax0pU32e564XzFZud8FDp383TC1TJLjmedsc0yC2dlJmtrbrnatgO2+i9zSy+t54k3E/uKoQUPoXPrwsTOvWXibKll5QPa+yTrldb2vu2GNiLz8WiB6HalS+rvf3FBJStT8//n1lVsXo8r6cDZPyxSa3IVuo6sEpdkzg8TjvLHBI2Q3LMwwTayQOOdEX8Ay0xhaQ==',
    'eJyN1D9rFUEQAPC5XMg9sLgDBRH/XIp8AEtB8JLawtbOJh9AsLFyNwhiIVhoYRf8BBa2FhsCmkLQIh/gIMJrAu9E0JNsbpzZvdt/vKcur/nd3s2b3Z0dxHEsMB6pPyU+TPw08V7iLDGkFhEHaEKIyC0UA9TeHwFCKwC4AaX/msaGt97kB/79Thq7+IcQzz+zhgejr0H0wnArtn44elyQbmP/VqMxdpY4X+Fzmy5cTuzyHV2uMix3EblKnM4nXk+cydj5MdwLXWxJZ86vuA6x670v3rkqLmaBS7lR3XVW5Lx6v/CuZQ6P0LuhkIGzd+TbwfxCQnXVe22uoHLbg+3aKwmzwjs6PjxXsA30mz6g86IC21l353Vkj6+b/Ib3B+SdKUBV0Sx8bSZ/I4O8X0/m76/IJy6h1+SZFO5CfjBu5s70/Wy7PnG+ZI77h/MWxy9+uQXs0qzKvT9TMXVT+jRecHEdOJ49ZyvfEI7Yb8+cT9k7GLoM779mH0zvv+QLWmI+jBtQswvMaYIHP+biz9Eu6KewLrAXbIVcEdlQoA3AfYdujKbt2mdfsH5M5oppeVvpBG+SOaBqrPn4WhzbWGvLm212vbP+brKz3gzd23k+4WaZtY9nPHiLZUZrJSZLY99ypWkH3uq/7Ft6azxPfJLYVQwvOAvdG3cidu+sEw9LrRsX0NwnXa+0NPdtP7TAwcXjBZLLlW65v//FHZesTu3/vzduYvv12JIOPPzDmFqym9B1ZJW4Zfv8KOEof0pQoPY9ixIsIyOZ7gz+AQRGmn8=',
  ];
  require "base64";
  require "zlib";
  zipped_str = Base64.decode64(base64_strs[bitmap_index]);
  raw_str = Zlib.inflate(zipped_str);
  s += 'p=%q' + 64.chr + '.'* 10000;
  $print_bitmap[s, raw_str, 128 / 8];
  print(64.chr);
)*"";