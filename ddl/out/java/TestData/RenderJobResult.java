// generated file, do not modify!
// 2016-11-10T16:02:38.461930000000Z

package TestData;

import java.util.ArrayList;
import java.util.HashMap;
import RT.*;

import LambdaCube.IR.*;
import LambdaCube.Mesh.*;
import LambdaCube.PipelineSchema.*;

public class RenderJobResult {
  public enum Tag { 
    RenderJobResult,
    RenderJobError
  }
  public Tag tag;

  public class RenderJobResult_ extends RenderJobResult { 
    public FrameResult _0;
    public RenderJobResult_() { tag = RenderJobResult.Tag.RenderJobResult; }
  }
  public class RenderJobError_ extends RenderJobResult { 
    public String _0;
    public RenderJobError_() { tag = RenderJobResult.Tag.RenderJobError; }
  }
}

