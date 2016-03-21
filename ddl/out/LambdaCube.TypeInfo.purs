-- generated file, do not modify!
<<<<<<< 4d40c4ee5ed15544d2ac7fb1ea7b61e89766d277
<<<<<<< c5e063b3c9aeff65161e24445e9672daff980b45
<<<<<<< 3b50722f433ec5ecc515ea1441fd633d85118cb9
-- 2016-03-01T13:00:40.810157000000Z
=======
-- 2016-03-20T21:42:12.996366000000Z
>>>>>>> working c# backend
=======
-- 2016-03-20T22:19:43.646837000000Z
>>>>>>> fix c#
=======
-- 2016-03-21T11:36:01.199696000000Z
>>>>>>> work on java json loader

module LambdaCube.TypeInfo where
import Prelude
import Data.Generic
import Data.Maybe (Maybe(..))
import Data.StrMap (StrMap(..))
import Data.Map (Map(..))
import Data.List (List(..))
import Linear

import Data.Argonaut.Combinators ((~>), (:=), (.?))
import Data.Argonaut.Core (jsonEmptyObject)
import Data.Argonaut.Printer (printJson)
import Data.Argonaut.Encode (EncodeJson, encodeJson)
import Data.Argonaut.Decode (DecodeJson, decodeJson)

import LambdaCube.IR

data Range
  = Range
  { startLine :: Int
  , startColumn :: Int
  , endLine :: Int
  , endColumn :: Int
  }


data TypeInfo
  = TypeInfo
  { range :: Range
  , text :: String
  }


data CompileResult
  = CompileError (Array Range) String (Array TypeInfo)
  | Compiled String String Pipeline (Array TypeInfo)



instance encodeJsonRange :: EncodeJson Range where
  encodeJson v = case v of
    Range r ->
      "tag" := "Range" ~>
      "startLine" := r.startLine ~>
      "startColumn" := r.startColumn ~>
      "endLine" := r.endLine ~>
      "endColumn" := r.endColumn ~>
      jsonEmptyObject

instance decodeJsonRange :: DecodeJson Range where
  decodeJson json = do
    obj <- decodeJson json
    tag <- obj .? "tag"
    case tag of
      "Range" -> do
        startLine <- obj .? "startLine"
        startColumn <- obj .? "startColumn"
        endLine <- obj .? "endLine"
        endColumn <- obj .? "endColumn"
        pure $ Range
          { startLine:startLine
          , startColumn:startColumn
          , endLine:endLine
          , endColumn:endColumn
          } 

instance encodeJsonTypeInfo :: EncodeJson TypeInfo where
  encodeJson v = case v of
    TypeInfo r ->
      "tag" := "TypeInfo" ~>
      "range" := r.range ~>
      "text" := r.text ~>
      jsonEmptyObject

instance decodeJsonTypeInfo :: DecodeJson TypeInfo where
  decodeJson json = do
    obj <- decodeJson json
    tag <- obj .? "tag"
    case tag of
      "TypeInfo" -> do
        range <- obj .? "range"
        text <- obj .? "text"
        pure $ TypeInfo
          { range:range
          , text:text
          } 

instance encodeJsonCompileResult :: EncodeJson CompileResult where
  encodeJson v = case v of
    CompileError arg0 arg1 arg2 -> "tag" := "CompileError" ~> "arg0" := arg0 ~> "arg1" := arg1 ~> "arg2" := arg2 ~> jsonEmptyObject
    Compiled arg0 arg1 arg2 arg3 -> "tag" := "Compiled" ~> "arg0" := arg0 ~> "arg1" := arg1 ~> "arg2" := arg2 ~> "arg3" := arg3 ~> jsonEmptyObject

instance decodeJsonCompileResult :: DecodeJson CompileResult where
  decodeJson json = do
    obj <- decodeJson json
    tag <- obj .? "tag"
    case tag of
      "CompileError" -> CompileError <$> obj .? "arg0" <*> obj .? "arg1" <*> obj .? "arg2"
      "Compiled" -> Compiled <$> obj .? "arg0" <*> obj .? "arg1" <*> obj .? "arg2" <*> obj .? "arg3"

