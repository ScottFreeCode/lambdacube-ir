// generated file, do not modify!
// 2016-11-10T16:02:37.496440000000Z

package LambdaCube.IR;

import java.util.ArrayList;
import java.util.HashMap;
import RT.*;


public class TargetItem {
  public enum Tag { 
    TargetItem
  }
  public Tag tag;

  public class TargetItem_ extends TargetItem { 
    public ImageSemantic targetSemantic;
    public Maybe<ImageRef> targetRef;
    public TargetItem_() { tag = TargetItem.Tag.TargetItem; }
  }
}

