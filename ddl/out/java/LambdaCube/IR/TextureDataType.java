// generated file, do not modify!
// 2016-03-29T11:30:12.412728000000Z

package LambdaCube.IR;

import java.util.ArrayList;
import java.util.HashMap;
import RT.*;


public class TextureDataType {
  public enum Tag { 
    FloatT,
    IntT,
    WordT,
    ShadowT
  }
  public Tag tag;

  public class FloatT_ extends TextureDataType { 
    public ColorArity _0;
    public FloatT_() { tag = TextureDataType.Tag.FloatT; }
  }
  public class IntT_ extends TextureDataType { 
    public ColorArity _0;
    public IntT_() { tag = TextureDataType.Tag.IntT; }
  }
  public class WordT_ extends TextureDataType { 
    public ColorArity _0;
    public WordT_() { tag = TextureDataType.Tag.WordT; }
  }
}

