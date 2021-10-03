package com.hurlant.math
{
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Hex;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   
   use namespace bi_internal;
   
   public class BigInteger
   {
      
      public static const const_123:BigInteger = nbv(1);
      
      public static const const_146:BigInteger = nbv(0);
      
      public static const const_1373:int = Infinity;
      
      public static const const_73:Array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509];
      
      public static const const_503:int = 52;
      
      public static const const_1240:Number = Math.pow(2,const_503);
      
      public static const const_26:int = 30;
      
      public static const const_67:int = 1 << const_26;
      
      public static const const_66:int = const_67 - 1;
      
      public static const F1:int = const_503 - const_26;
      
      public static const F2:int = 2 * const_26 - const_503;
       
      
      bi_internal var a:Array;
      
      bi_internal var s:int;
      
      public var t:int;
      
      public function BigInteger(param1:* = null, param2:int = 0)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         a = new Array();
         if(param1 is String)
         {
            param1 = Hex.toArray(param1);
            param2 = 0;
         }
         if(param1 is ByteArray)
         {
            _loc3_ = param1 as ByteArray;
            _loc4_ = int(param2) || int(_loc3_.length - _loc3_.position);
            fromArray(_loc3_,_loc4_);
         }
      }
      
      public static function nbv(param1:int) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         _loc2_.fromInt(param1);
         return _loc2_;
      }
      
      public function clearBit(param1:int) : BigInteger
      {
         return changeBit(param1,op_andnot);
      }
      
      private function op_or(param1:int, param2:int) : int
      {
         return param1 | param2;
      }
      
      public function negate() : BigInteger
      {
         var _loc1_:BigInteger = nbi();
         const_146.subTo(this,_loc1_);
         return _loc1_;
      }
      
      public function andNot(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         bitwiseTo(param1,op_andnot,_loc2_);
         return _loc2_;
      }
      
      public function modPow(param1:BigInteger, param2:BigInteger) : BigInteger
      {
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc12_:* = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc3_:int = param1.bitLength();
         var _loc5_:BigInteger = nbv(1);
         if(_loc3_ <= 0)
         {
            return _loc5_;
         }
         if(_loc3_ < 18)
         {
            _loc4_ = 1;
         }
         else if(_loc3_ < 48)
         {
            _loc4_ = 3;
         }
         else if(_loc3_ < 144)
         {
            _loc4_ = 4;
         }
         else if(_loc3_ < 768)
         {
            _loc4_ = 5;
         }
         else
         {
            _loc4_ = 6;
         }
         if(_loc3_ < 8)
         {
            _loc6_ = new ClassicReduction(param2);
         }
         else if(param2.isEven())
         {
            _loc6_ = new BarrettReduction(param2);
         }
         else
         {
            _loc6_ = new MontgomeryReduction(param2);
         }
         var _loc7_:* = [];
         var _loc8_:int = 3;
         var _loc9_:int = _loc4_ - 1;
         var _loc10_:int = (1 << _loc4_) - 1;
         _loc7_[1] = _loc6_.convert(this);
         if(_loc4_ > 1)
         {
            _loc16_ = new BigInteger();
            _loc6_.sqrTo(_loc7_[1],_loc16_);
            while(_loc8_ <= _loc10_)
            {
               _loc7_[_loc8_] = new BigInteger();
               _loc6_.mulTo(_loc16_,_loc7_[_loc8_ - 2],_loc7_[_loc8_]);
               _loc8_ += 2;
            }
         }
         var _loc11_:int = param1.t - 1;
         var _loc13_:Boolean = true;
         var _loc14_:BigInteger = new BigInteger();
         _loc3_ = nbits(param1.a[_loc11_]) - 1;
         while(_loc11_ >= 0)
         {
            if(_loc3_ >= _loc9_)
            {
               _loc12_ = param1.a[_loc11_] >> _loc3_ - _loc9_ & _loc10_;
            }
            else
            {
               _loc12_ = (param1.a[_loc11_] & (1 << _loc3_ + 1) - 1) << _loc9_ - _loc3_;
               if(_loc11_ > 0)
               {
                  _loc12_ |= param1.a[_loc11_ - 1] >> const_26 + _loc3_ - _loc9_;
               }
            }
            _loc8_ = _loc4_;
            while((_loc12_ & 1) == 0)
            {
               _loc12_ >>= 1;
               _loc8_--;
            }
            var _loc17_:* = _loc3_ - _loc8_;
            _loc3_ -= _loc8_;
            if(_loc17_ < 0)
            {
               _loc3_ += const_26;
               _loc11_--;
            }
            if(_loc13_)
            {
               _loc7_[_loc12_].copyTo(_loc5_);
               _loc13_ = false;
            }
            else
            {
               while(_loc8_ > 1)
               {
                  _loc6_.sqrTo(_loc5_,_loc14_);
                  _loc6_.sqrTo(_loc14_,_loc5_);
                  _loc8_ -= 2;
               }
               if(_loc8_ > 0)
               {
                  _loc6_.sqrTo(_loc5_,_loc14_);
               }
               else
               {
                  _loc15_ = _loc5_;
                  _loc5_ = _loc14_;
                  _loc14_ = _loc15_;
               }
               _loc6_.mulTo(_loc14_,_loc7_[_loc12_],_loc5_);
            }
            while(_loc11_ >= 0 && (param1.a[_loc11_] & 1 << _loc3_) == 0)
            {
               _loc6_.sqrTo(_loc5_,_loc14_);
               _loc15_ = _loc5_;
               _loc5_ = _loc14_;
               _loc14_ = _loc15_;
               if(--_loc3_ < 0)
               {
                  _loc3_ = const_26 - 1;
                  _loc11_--;
               }
            }
         }
         return _loc6_.revert(_loc5_);
      }
      
      public function isProbablePrime(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:BigInteger = abs();
         if(_loc3_.t == 1 && _loc3_.a[0] <= const_73["-1"])
         {
            _loc2_ = 0;
            while(_loc2_ < const_73.length)
            {
               if(_loc3_[0] == const_73[_loc2_])
               {
                  return true;
               }
               _loc2_++;
            }
            return false;
         }
         if(_loc3_.isEven())
         {
            return false;
         }
         _loc2_ = 1;
         while(_loc2_ < const_73.length)
         {
            _loc4_ = 0;
            _loc5_ = _loc2_ + 1;
            while(_loc5_ < const_73.length && _loc4_ < const_1373)
            {
               _loc4_ *= 0;
            }
            _loc4_ = _loc3_.modInt(_loc4_);
            while(_loc2_ < _loc5_)
            {
               if(_loc4_ % 0 == 0)
               {
                  return false;
               }
            }
         }
         return _loc3_.millerRabin(param1);
      }
      
      public function divide(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         divRemTo(param1,_loc2_,null);
         return _loc2_;
      }
      
      public function mod(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = nbi();
         abs().divRemTo(param1,null,_loc2_);
         if(bi_internal::s < 0 && _loc2_.compareTo(const_146) > 0)
         {
            param1.subTo(_loc2_,_loc2_);
         }
         return _loc2_;
      }
      
      protected function addTo(param1:BigInteger, param2:BigInteger) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,t);
         while(_loc3_ < _loc5_)
         {
            _loc4_ += this.a[_loc3_] + param1.a[_loc3_];
            var _loc6_:*;
            param2.a[_loc6_ = _loc3_++] = _loc4_ & const_66;
            _loc4_ >>= const_26;
         }
         if(param1.t < t)
         {
            _loc4_ += param1.s;
            while(_loc3_ < t)
            {
               _loc4_ += this.a[_loc3_];
               param2.a[_loc6_ = _loc3_++] = _loc4_ & const_66;
               _loc4_ >>= const_26;
            }
            _loc4_ += bi_internal::s;
         }
         else
         {
            _loc4_ += bi_internal::s;
            while(_loc3_ < param1.t)
            {
               _loc4_ += param1.a[_loc3_];
               param2.a[_loc6_ = _loc3_++] = _loc4_ & const_66;
               _loc4_ >>= const_26;
            }
            _loc4_ += param1.s;
         }
         param2.s = _loc4_ < 0 ? -1 : 0;
         if(_loc4_ > 0)
         {
            param2.a[_loc6_ = _loc3_++] = _loc4_;
         }
         else if(_loc4_ < -1)
         {
            param2.a[_loc6_ = _loc3_++] = const_67 + _loc4_;
         }
         param2.t = _loc3_;
         param2.clamp();
      }
      
      protected function bitwiseTo(param1:BigInteger, param2:Function, param3:BigInteger) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:int = Math.min(param1.t,t);
         _loc4_ = 0;
         while(_loc4_ < _loc6_)
         {
            param3.a[_loc4_] = param2(this.a[_loc4_],param1.a[_loc4_]);
            _loc4_++;
         }
         if(param1.t < t)
         {
            _loc5_ = param1.s & const_66;
            _loc4_ = _loc6_;
            while(_loc4_ < t)
            {
               param3.a[_loc4_] = param2(this.a[_loc4_],_loc5_);
               _loc4_++;
            }
            param3.t = t;
         }
         else
         {
            _loc5_ = bi_internal::s & const_66;
            _loc4_ = _loc6_;
            while(_loc4_ < param1.t)
            {
               param3.a[_loc4_] = param2(_loc5_,param1.a[_loc4_]);
               _loc4_++;
            }
            param3.t = param1.t;
         }
         param3.s = param2(bi_internal::s,param1.s);
         param3.clamp();
      }
      
      protected function modInt(param1:int) : int
      {
         var _loc4_:int = 0;
         if(param1 <= 0)
         {
            return 0;
         }
         var _loc2_:int = const_67 % param1;
         var _loc3_:int = bi_internal::s < 0 ? int(param1 - 1) : 0;
         if(t > 0)
         {
            if(_loc2_ == 0)
            {
               _loc3_ = 0 % param1;
            }
            else
            {
               _loc4_ = t - 1;
               while(_loc4_ >= 0)
               {
                  _loc3_ = (_loc2_ * _loc3_ + bi_internal::a[_loc4_]) % param1;
                  _loc4_--;
               }
            }
         }
         return _loc3_;
      }
      
      protected function chunkSize(param1:Number) : int
      {
         return Math.floor(0 * const_26 / Math.log(param1));
      }
      
      public function gcd(param1:BigInteger) : BigInteger
      {
         var _loc6_:* = null;
         var _loc2_:BigInteger = bi_internal::s < 0 ? negate() : clone();
         var _loc3_:BigInteger = param1.s < 0 ? param1.negate() : param1.clone();
         if(_loc2_.compareTo(_loc3_) < 0)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc3_;
            _loc3_ = _loc6_;
         }
         var _loc4_:int = _loc2_.getLowestSetBit();
         var _loc5_:int = _loc3_.getLowestSetBit();
         if(_loc5_ < 0)
         {
            return _loc2_;
         }
         if(_loc4_ < _loc5_)
         {
            _loc5_ = _loc4_;
         }
         if(_loc5_ > 0)
         {
            _loc2_.rShiftTo(_loc5_,_loc2_);
            _loc3_.rShiftTo(_loc5_,_loc3_);
         }
         while(_loc2_.sigNum() > 0)
         {
            if((_loc4_ = _loc2_.getLowestSetBit()) > 0)
            {
               _loc2_.rShiftTo(_loc4_,_loc2_);
            }
            if((_loc4_ = _loc3_.getLowestSetBit()) > 0)
            {
               _loc3_.rShiftTo(_loc4_,_loc3_);
            }
            if(_loc2_.compareTo(_loc3_) >= 0)
            {
               _loc2_.subTo(_loc3_,_loc2_);
               _loc2_.rShiftTo(1,_loc2_);
            }
            else
            {
               _loc3_.subTo(_loc2_,_loc3_);
               _loc3_.rShiftTo(1,_loc3_);
            }
         }
         if(_loc5_ > 0)
         {
            _loc3_.lShiftTo(_loc5_,_loc3_);
         }
         return _loc3_;
      }
      
      bi_internal function dAddOffset(param1:int, param2:int) : void
      {
         while(t <= param2)
         {
            var _loc3_:* = t++;
            bi_internal::a[_loc3_] = 0;
         }
         bi_internal::a[param2] += param1;
         while(bi_internal::a[param2] >= const_67)
         {
            bi_internal::a[param2] = 0 - const_67;
            if(++param2 >= t)
            {
               _loc3_ = t++;
               bi_internal::a[_loc3_] = 0;
            }
            ++0;
         }
      }
      
      bi_internal function lShiftTo(param1:int, param2:BigInteger) : void
      {
         var _loc8_:int = 0;
         var _loc3_:int = param1 % const_26;
         var _loc4_:int = const_26 - _loc3_;
         var _loc5_:int = (1 << _loc4_) - 1;
         var _loc6_:int = param1 / const_26;
         var _loc7_:* = bi_internal::s << _loc3_ & const_66;
         _loc8_ = t - 1;
         while(_loc8_ >= 0)
         {
            param2.a[_loc8_ + _loc6_ + 1] = 0 >> _loc4_ | _loc7_;
            _loc7_ = (0 & _loc5_) << _loc3_;
            _loc8_--;
         }
         _loc8_ = _loc6_ - 1;
         while(_loc8_ >= 0)
         {
            param2.a[_loc8_] = 0;
            _loc8_--;
         }
         param2.a[_loc6_] = _loc7_;
         param2.t = t + _loc6_ + 1;
         param2.s = bi_internal::s;
         param2.clamp();
      }
      
      public function getLowestSetBit() : int
      {
         var _loc1_:int = 0;
         while(_loc1_ < t)
         {
            if(true)
            {
               return _loc1_ * const_26 + lbit(bi_internal::a[_loc1_]);
            }
            _loc1_++;
         }
         if(bi_internal::s < 0)
         {
            return t * const_26;
         }
         return -1;
      }
      
      public function subtract(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         subTo(param1,_loc2_);
         return _loc2_;
      }
      
      public function primify(param1:int, param2:int) : void
      {
         if(!testBit(param1 - 1))
         {
            bitwiseTo(BigInteger.const_123.shiftLeft(param1 - 1),op_or,this);
         }
         if(isEven())
         {
            dAddOffset(1,0);
         }
         while(!isProbablePrime(param2))
         {
            dAddOffset(2,0);
            while(bitLength() > param1)
            {
               subTo(BigInteger.const_123.shiftLeft(param1 - 1),this);
            }
         }
      }
      
      bi_internal function multiplyLowerTo(param1:BigInteger, param2:int, param3:BigInteger) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = Math.min(t + param1.t,param2);
         param3.s = 0;
         param3.t = _loc4_;
         while(_loc4_ > 0)
         {
            var _loc6_:* = --_loc4_;
            param3.a[--_loc4_] = 0;
         }
         _loc5_ = param3.t - t;
         while(_loc4_ < _loc5_)
         {
            param3.a[_loc4_ + t] = am(0,param1.a[_loc4_],param3,_loc4_,0,t);
            _loc4_++;
         }
         _loc5_ = Math.min(param1.t,param2);
         while(_loc4_ < _loc5_)
         {
            am(0,param1.a[_loc4_],param3,_loc4_,0,param2 - _loc4_);
            _loc4_++;
         }
         param3.clamp();
      }
      
      public function modPowInt(param1:int, param2:BigInteger) : BigInteger
      {
         var _loc3_:* = null;
         if(param1 < 256 || param2.isEven())
         {
            _loc3_ = new ClassicReduction(param2);
         }
         else
         {
            _loc3_ = new MontgomeryReduction(param2);
         }
         return exp(param1,_loc3_);
      }
      
      bi_internal function intAt(param1:String, param2:int) : int
      {
         return parseInt(param1.charAt(param2),36);
      }
      
      public function testBit(param1:int) : Boolean
      {
         var _loc2_:int = Math.floor(param1 / const_26);
         if(_loc2_ >= t)
         {
            return bi_internal::s != 0;
         }
         return (0 & 1 << param1 % const_26) != 0;
      }
      
      bi_internal function exp(param1:int, param2:IReduction) : BigInteger
      {
         var _loc7_:* = null;
         if(param1 > 4294967295 || param1 < 1)
         {
            return const_123;
         }
         var _loc3_:BigInteger = nbi();
         var _loc4_:BigInteger = nbi();
         var _loc5_:BigInteger = param2.convert(this);
         var _loc6_:int = nbits(param1) - 1;
         _loc5_.copyTo(_loc3_);
         while(--_loc6_ >= 0)
         {
            param2.sqrTo(_loc3_,_loc4_);
            if((param1 & 1 << _loc6_) > 0)
            {
               param2.mulTo(_loc4_,_loc5_,_loc3_);
            }
            else
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc4_;
               _loc4_ = _loc7_;
            }
         }
         return param2.revert(_loc3_);
      }
      
      public function toArray(param1:ByteArray) : uint
      {
         var _loc3_:int = 255;
         var _loc4_:* = 0;
         var _loc5_:int = t;
         var _loc6_:int = const_26 - _loc5_ * const_26 % 8;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         if(_loc5_-- > 0)
         {
            if(_loc6_ < const_26 && _loc9_ > 0)
            {
               _loc7_ = true;
               param1.writeByte(_loc4_);
               _loc8_++;
            }
            while(_loc5_ >= 0)
            {
               if(_loc6_ < 8)
               {
                  _loc4_ = (0 & (1 << _loc6_) - 1) << 8 - _loc6_;
                  var _loc9_:* = _loc6_ + (const_26 - 8);
                  _loc6_ += const_26 - 8;
                  _loc4_ |= 0 >> _loc9_;
               }
               else
               {
                  _loc9_ = _loc6_ - 8;
                  _loc6_ -= 8;
                  _loc4_ = 0 >> _loc9_ & _loc3_;
                  if(_loc6_ <= 0)
                  {
                     _loc6_ += const_26;
                     _loc5_--;
                  }
               }
               if(_loc4_ > 0)
               {
                  _loc7_ = true;
               }
               if(_loc7_)
               {
                  param1.writeByte(_loc4_);
                  _loc8_++;
               }
            }
         }
         return _loc8_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Random = new Random();
         var _loc2_:int = 0;
         while(_loc2_ < bi_internal::a.length)
         {
            bi_internal::a[_loc2_] = _loc1_.nextByte();
            delete bi_internal::a[_loc2_];
            _loc2_++;
         }
         a = null;
         t = 0;
         s = 0;
         Memory.gc();
      }
      
      private function lbit(param1:int) : int
      {
         if(param1 == 0)
         {
            return -1;
         }
         var _loc2_:int = 0;
         if((param1 & 65535) == 0)
         {
            param1 >>= 16;
            _loc2_ += 16;
         }
         if((param1 & 255) == 0)
         {
            param1 >>= 8;
            _loc2_ += 8;
         }
         if((param1 & 15) == 0)
         {
            param1 >>= 4;
            _loc2_ += 4;
         }
         if((param1 & 3) == 0)
         {
            param1 >>= 2;
            _loc2_ += 2;
         }
         if((param1 & 1) == 0)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      bi_internal function divRemTo(param1:BigInteger, param2:BigInteger = null, param3:BigInteger = null) : void
      {
         var qd:int = 0;
         var m:BigInteger = param1;
         var q:BigInteger = param2;
         var r:BigInteger = param3;
         var pm:BigInteger = m.abs();
         if(pm.t <= 0)
         {
            return;
         }
         var pt:BigInteger = abs();
         if(pt.t < pm.t)
         {
            if(q != null)
            {
               q.fromInt(0);
            }
            if(r != null)
            {
               copyTo(r);
            }
            return;
         }
         if(r == null)
         {
            r = nbi();
         }
         var y:BigInteger = nbi();
         var ts:int = bi_internal::s;
         var ms:int = m.s;
         var nsh:int = const_26 - nbits(pm.a[pm.t - 1]);
         if(nsh > 0)
         {
            pm.lShiftTo(nsh,y);
            pt.lShiftTo(nsh,r);
         }
         else
         {
            pm.copyTo(y);
            pt.copyTo(r);
         }
         var ys:int = y.t;
         var y0:int = y.a[ys - 1];
         if(y0 == 0)
         {
            return;
         }
         var yt:Number = y0 * (1 << F1) + (ys > 1 ? y.a[ys - 2] >> F2 : 0);
         var d1:Number = const_1240 / yt;
         var d2:Number = (1 << F1) / yt;
         var e:Number = 1 << F2;
         var i:int = r.t;
         var j:int = i - ys;
         var t:BigInteger = q == null ? nbi() : q;
         y.dlShiftTo(j,t);
         if(r.compareTo(t) >= 0)
         {
            var _loc5_:*;
            r.a[_loc5_ = r.t++] = 1;
            r.subTo(t,r);
         }
         const_123.dlShiftTo(ys,t);
         t.subTo(y,y);
         while(y.t < ys)
         {
            y.(++y.t, false);
         }
         while(--j >= 0)
         {
            qd = r.a[--i] == y0 ? int(const_66) : int(Number(r.a[i]) * d1 + (Number(r.a[i - 1]) + e) * d2);
            _loc5_ = r.a[i] + y.am(0,qd,r,j,0,ys);
            r.a[i] += y.am(0,qd,r,j,0,ys);
            if(_loc5_ < qd)
            {
               y.dlShiftTo(j,t);
               r.subTo(t,r);
               while(r.a[i] < --qd)
               {
                  r.subTo(t,r);
               }
            }
         }
         if(q != null)
         {
            r.drShiftTo(ys,q);
            if(ts != ms)
            {
               const_146.subTo(q,q);
            }
         }
         r.t = ys;
         r.clamp();
         if(nsh > 0)
         {
            r.rShiftTo(nsh,r);
         }
         if(ts < 0)
         {
            const_146.subTo(r,r);
         }
      }
      
      public function remainder(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         divRemTo(param1,null,_loc2_);
         return _loc2_;
      }
      
      bi_internal function multiplyUpperTo(param1:BigInteger, param2:int, param3:BigInteger) : void
      {
         param2--;
         var _loc5_:* = t + param1.t - param2;
         param3.t = t + param1.t - param2;
         var _loc4_:int = _loc5_;
         param3.s = 0;
         while(--_loc4_ >= 0)
         {
            param3.a[_loc4_] = 0;
         }
         _loc4_ = Math.max(param2 - t,0);
         while(_loc4_ < param1.t)
         {
            param3.a[t + _loc4_ - param2] = am(param2 - _loc4_,param1.a[_loc4_],param3,0,0,t + _loc4_ - param2);
            _loc4_++;
         }
         param3.clamp();
         param3.drShiftTo(1,param3);
      }
      
      public function divideAndRemainder(param1:BigInteger) : Array
      {
         var _loc2_:BigInteger = new BigInteger();
         var _loc3_:BigInteger = new BigInteger();
         divRemTo(param1,_loc2_,_loc3_);
         return [_loc2_,_loc3_];
      }
      
      public function valueOf() : Number
      {
         var _loc1_:* = 1;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < t)
         {
            _loc2_ += 0 * _loc1_;
            _loc1_ *= const_67;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function shiftLeft(param1:int) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         if(param1 < 0)
         {
            rShiftTo(-param1,_loc2_);
         }
         else
         {
            lShiftTo(param1,_loc2_);
         }
         return _loc2_;
      }
      
      public function multiply(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         multiplyTo(param1,_loc2_);
         return _loc2_;
      }
      
      bi_internal function am(param1:int, param2:int, param3:BigInteger, param4:int, param5:int, param6:int) : int
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc7_:* = param2 & 32767;
         var _loc8_:* = param2 >> 15;
         while(--param6 >= 0)
         {
            _loc9_ = 0;
            _loc10_ = 0;
            _loc11_ = _loc8_ * _loc9_ + _loc10_ * _loc7_;
            _loc9_ = _loc7_ * _loc9_ + ((_loc11_ & 32767) << 15) + param3.a[param4] + (param5 & 1073741823);
            param5 = (_loc9_ >>> 30) + (_loc11_ >>> 15) + _loc8_ * _loc10_ + (param5 >>> 30);
            var _loc12_:*;
            param3.a[_loc12_ = param4++] = _loc9_ & 1073741823;
         }
         return param5;
      }
      
      bi_internal function drShiftTo(param1:int, param2:BigInteger) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param1;
         while(_loc3_ < t)
         {
            param2.a[_loc3_ - param1] = bi_internal::a[_loc3_];
            _loc3_++;
         }
         param2.t = Math.max(t - param1,0);
         param2.s = bi_internal::s;
      }
      
      public function add(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         addTo(param1,_loc2_);
         return _loc2_;
      }
      
      protected function nbi() : *
      {
         return new BigInteger();
      }
      
      protected function millerRabin(param1:int) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc2_:BigInteger = subtract(BigInteger.const_123);
         var _loc3_:int = _loc2_.getLowestSetBit();
         if(_loc3_ <= 0)
         {
            return false;
         }
         var _loc4_:BigInteger = _loc2_.shiftRight(_loc3_);
         param1 = param1 + 1 >> 1;
         if(param1 > const_73.length)
         {
            param1 = 0;
         }
         var _loc5_:BigInteger = new BigInteger();
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            _loc5_.fromInt(const_73[_loc6_]);
            _loc7_ = _loc5_.modPow(_loc4_,this);
            if(_loc7_.compareTo(BigInteger.const_123) != 0 && _loc7_.compareTo(_loc2_) != 0)
            {
               _loc8_ = 1;
               while(_loc8_++ < _loc3_ && _loc7_.compareTo(_loc2_) != 0)
               {
                  _loc7_ = _loc7_.modPowInt(2,this);
                  if(_loc7_.compareTo(BigInteger.const_123) == 0)
                  {
                     return false;
                  }
               }
               if(_loc7_.compareTo(_loc2_) != 0)
               {
                  return false;
               }
            }
            _loc6_++;
         }
         return true;
      }
      
      bi_internal function dMultiply(param1:int) : void
      {
         bi_internal::a[t] = am(0,param1 - 1,this,0,0,t);
         ++t;
         clamp();
      }
      
      private function op_andnot(param1:int, param2:int) : int
      {
         return param1 & ~param2;
      }
      
      bi_internal function clamp() : void
      {
         var _loc1_:* = bi_internal::s & const_66;
         while(t > 0 && bi_internal::a[t - 1] == _loc1_)
         {
            --t;
         }
      }
      
      bi_internal function invDigit() : int
      {
         if(t < 1)
         {
            return 0;
         }
         var _loc1_:int = 0;
         if((_loc1_ & 1) == 0)
         {
            return 0;
         }
         var _loc2_:* = _loc1_ & 3;
         _loc2_ = _loc2_ * (2 - (_loc1_ & 15) * _loc2_) & 15;
         _loc2_ = _loc2_ * (2 - (_loc1_ & 255) * _loc2_) & 255;
         _loc2_ = _loc2_ * (2 - ((_loc1_ & 65535) * _loc2_ & 65535)) & 65535;
         _loc2_ = int(_loc2_ * (2 - _loc1_ * _loc2_ % const_67) % const_67);
         return _loc2_ > 0 ? int(const_67 - _loc2_) : int(-_loc2_);
      }
      
      protected function changeBit(param1:int, param2:Function) : BigInteger
      {
         var _loc3_:BigInteger = BigInteger.const_123.shiftLeft(param1);
         bitwiseTo(_loc3_,param2,_loc3_);
         return _loc3_;
      }
      
      public function equals(param1:BigInteger) : Boolean
      {
         return compareTo(param1) == 0;
      }
      
      public function compareTo(param1:BigInteger) : int
      {
         var _loc2_:int = bi_internal::s - param1.s;
         if(_loc2_ != 0)
         {
            return _loc2_;
         }
         var _loc3_:int = t;
         _loc2_ = _loc3_ - param1.t;
         if(_loc2_ != 0)
         {
            return _loc2_;
         }
         while(--_loc3_ >= 0)
         {
            _loc2_ = 0 - param1.a[_loc3_];
            if(_loc2_ != 0)
            {
               return _loc2_;
            }
         }
         return 0;
      }
      
      public function shiftRight(param1:int) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         if(param1 < 0)
         {
            lShiftTo(-param1,_loc2_);
         }
         else
         {
            rShiftTo(param1,_loc2_);
         }
         return _loc2_;
      }
      
      bi_internal function multiplyTo(param1:BigInteger, param2:BigInteger) : void
      {
         var _loc3_:BigInteger = abs();
         var _loc4_:BigInteger = param1.abs();
         var _loc5_:int = _loc3_.t;
         param2.t = _loc5_ + _loc4_.t;
         while(--_loc5_ >= 0)
         {
            param2.a[_loc5_] = 0;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc4_.t)
         {
            param2.a[_loc5_ + _loc3_.t] = _loc3_.am(0,_loc4_.a[_loc5_],param2,_loc5_,0,_loc3_.t);
            _loc5_++;
         }
         param2.s = 0;
         param2.clamp();
         if(bi_internal::s != param1.s)
         {
            const_146.subTo(param2,param2);
         }
      }
      
      public function bitCount() : int
      {
         var _loc1_:int = 0;
         var _loc2_:* = bi_internal::s & const_66;
         var _loc3_:int = 0;
         while(_loc3_ < t)
         {
            _loc1_ += cbit(0 ^ _loc2_);
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function toRadix(param1:uint = 10) : String
      {
         if(sigNum() == 0 || param1 < 2 || param1 > 32)
         {
            return "0";
         }
         var _loc2_:int = chunkSize(param1);
         var _loc3_:Number = Math.pow(param1,_loc2_);
         var _loc4_:BigInteger = nbv(_loc3_);
         var _loc5_:BigInteger = nbi();
         var _loc6_:BigInteger = nbi();
         var _loc7_:String = "";
         divRemTo(_loc4_,_loc5_,_loc6_);
         while(_loc5_.sigNum() > 0)
         {
            _loc7_ = (_loc3_ + _loc6_.intValue()).toString(param1).substr(1) + _loc7_;
            _loc5_.divRemTo(_loc4_,_loc5_,_loc6_);
         }
         return _loc6_.intValue().toString(param1) + _loc7_;
      }
      
      private function cbit(param1:int) : int
      {
         var _loc2_:int = 0;
         while(param1 != 0)
         {
            param1 &= param1 - 1;
            _loc2_++;
         }
         return _loc2_;
      }
      
      bi_internal function rShiftTo(param1:int, param2:BigInteger) : void
      {
         var _loc7_:int = 0;
         param2.s = bi_internal::s;
         var _loc3_:int = param1 / const_26;
         if(_loc3_ >= t)
         {
            param2.t = 0;
            return;
         }
         var _loc4_:int = param1 % const_26;
         var _loc5_:int = const_26 - _loc4_;
         var _loc6_:int = (1 << _loc4_) - 1;
         param2.a[0] = 0 >> _loc4_;
         _loc7_ = _loc3_ + 1;
         while(_loc7_ < t)
         {
            param2.a[_loc7_ - _loc3_ - 1] |= (0 & _loc6_) << _loc5_;
            param2.a[_loc7_ - _loc3_] = 0 >> _loc4_;
            _loc7_++;
         }
         if(_loc4_ > 0)
         {
            param2.a[t - _loc3_ - 1] |= (bi_internal::s & _loc6_) << _loc5_;
         }
         param2.t = t - _loc3_;
         param2.clamp();
      }
      
      public function modInverse(param1:BigInteger) : BigInteger
      {
         var _loc2_:Boolean = param1.isEven();
         if(isEven() && _loc2_ || param1.sigNum() == 0)
         {
            return BigInteger.const_146;
         }
         var _loc3_:BigInteger = param1.clone();
         var _loc4_:BigInteger = clone();
         var _loc5_:BigInteger = nbv(1);
         var _loc6_:BigInteger = nbv(0);
         var _loc7_:BigInteger = nbv(0);
         var _loc8_:BigInteger = nbv(1);
         while(_loc3_.sigNum() != 0)
         {
            while(_loc3_.isEven())
            {
               _loc3_.rShiftTo(1,_loc3_);
               if(_loc2_)
               {
                  if(!_loc5_.isEven() || !_loc6_.isEven())
                  {
                     _loc5_.addTo(this,_loc5_);
                     _loc6_.subTo(param1,_loc6_);
                  }
                  _loc5_.rShiftTo(1,_loc5_);
               }
               else if(!_loc6_.isEven())
               {
                  _loc6_.subTo(param1,_loc6_);
               }
               _loc6_.rShiftTo(1,_loc6_);
            }
            while(_loc4_.isEven())
            {
               _loc4_.rShiftTo(1,_loc4_);
               if(_loc2_)
               {
                  if(!_loc7_.isEven() || !_loc8_.isEven())
                  {
                     _loc7_.addTo(this,_loc7_);
                     _loc8_.subTo(param1,_loc8_);
                  }
                  _loc7_.rShiftTo(1,_loc7_);
               }
               else if(!_loc8_.isEven())
               {
                  _loc8_.subTo(param1,_loc8_);
               }
               _loc8_.rShiftTo(1,_loc8_);
            }
            if(_loc3_.compareTo(_loc4_) >= 0)
            {
               _loc3_.subTo(_loc4_,_loc3_);
               if(_loc2_)
               {
                  _loc5_.subTo(_loc7_,_loc5_);
               }
               _loc6_.subTo(_loc8_,_loc6_);
            }
            else
            {
               _loc4_.subTo(_loc3_,_loc4_);
               if(_loc2_)
               {
                  _loc7_.subTo(_loc5_,_loc7_);
               }
               _loc8_.subTo(_loc6_,_loc8_);
            }
         }
         if(_loc4_.compareTo(BigInteger.const_123) != 0)
         {
            return BigInteger.const_146;
         }
         if(_loc8_.compareTo(param1) >= 0)
         {
            return _loc8_.subtract(param1);
         }
         if(_loc8_.sigNum() < 0)
         {
            _loc8_.addTo(param1,_loc8_);
            if(_loc8_.sigNum() < 0)
            {
               return _loc8_.add(param1);
            }
            return _loc8_;
         }
         return _loc8_;
      }
      
      bi_internal function fromArray(param1:ByteArray, param2:int) : void
      {
         var _loc7_:int = 0;
         var _loc3_:int = param1.position;
         var _loc4_:int = _loc3_ + param2;
         var _loc5_:int = 0;
         t = 0;
         s = 0;
         while(--_loc4_ >= _loc3_)
         {
            _loc7_ = _loc4_ < param1.length ? int(param1[_loc4_]) : 0;
            if(_loc5_ == 0)
            {
               var _loc8_:*;
               bi_internal::a[_loc8_ = t++] = _loc7_;
            }
            else if(_loc5_ + 8 > const_26)
            {
               bi_internal::a[t - 1] = 0 | (_loc7_ & (1 << const_26 - _loc5_) - 1) << _loc5_;
               bi_internal::a[_loc8_ = t++] = _loc7_ >> const_26 - _loc5_;
            }
            else
            {
               bi_internal::a[t - 1] = 0 | _loc7_ << _loc5_;
            }
            _loc5_ += 8;
            if(_loc5_ >= const_26)
            {
               _loc5_ -= const_26;
            }
         }
         clamp();
         param1.position = Math.min(_loc3_ + param2,param1.length);
      }
      
      bi_internal function copyTo(param1:BigInteger) : void
      {
         var _loc2_:int = t - 1;
         while(_loc2_ >= 0)
         {
            param1.a[_loc2_] = bi_internal::a[_loc2_];
            _loc2_--;
         }
         param1.t = t;
         param1.s = bi_internal::s;
      }
      
      public function intValue() : int
      {
         if(bi_internal::s < 0)
         {
            if(t == 1)
            {
               return 0 - const_67;
            }
            if(t == 0)
            {
               return -1;
            }
         }
         else
         {
            if(t == 1)
            {
               return bi_internal::a[0];
            }
            if(t == 0)
            {
               return 0;
            }
         }
         return (0 & (1 << 32 - const_26) - 1) << const_26 | 0;
      }
      
      public function min(param1:BigInteger) : BigInteger
      {
         return compareTo(param1) < 0 ? {} : param1;
      }
      
      public function bitLength() : int
      {
         if(t <= 0)
         {
            return 0;
         }
         return const_26 * (t - 1) + nbits(0 ^ bi_internal::s & const_66);
      }
      
      public function shortValue() : int
      {
         return t == 0 ? int(bi_internal::s) : 0 >> 16;
      }
      
      public function and(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         bitwiseTo(param1,op_and,_loc2_);
         return _loc2_;
      }
      
      public function byteValue() : int
      {
         return t == 0 ? int(bi_internal::s) : 0 >> 24;
      }
      
      public function not() : BigInteger
      {
         var _loc1_:BigInteger = new BigInteger();
         var _loc2_:int = 0;
         while(_loc2_ < t)
         {
            _loc1_[_loc2_] = const_66 & -1;
            _loc2_++;
         }
         _loc1_.t = t;
         _loc1_.s = ~bi_internal::s;
         return _loc1_;
      }
      
      bi_internal function subTo(param1:BigInteger, param2:BigInteger) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,t);
         while(_loc3_ < _loc5_)
         {
            _loc4_ += 0 - param1.a[_loc3_];
            var _loc6_:*;
            param2.a[_loc6_ = _loc3_++] = _loc4_ & const_66;
            _loc4_ >>= const_26;
         }
         if(param1.t < t)
         {
            _loc4_ -= param1.s;
            while(_loc3_ < t)
            {
               _loc4_ += bi_internal::a[_loc3_];
               param2.a[_loc6_ = _loc3_++] = _loc4_ & const_66;
               _loc4_ >>= const_26;
            }
            _loc4_ += bi_internal::s;
         }
         else
         {
            _loc4_ += bi_internal::s;
            while(_loc3_ < param1.t)
            {
               _loc4_ -= param1.a[_loc3_];
               param2.a[_loc6_ = _loc3_++] = _loc4_ & const_66;
               _loc4_ >>= const_26;
            }
            _loc4_ -= param1.s;
         }
         param2.s = _loc4_ < 0 ? -1 : 0;
         if(_loc4_ < -1)
         {
            param2.a[_loc6_ = _loc3_++] = const_67 + _loc4_;
         }
         else if(_loc4_ > 0)
         {
            param2.a[_loc6_ = _loc3_++] = _loc4_;
         }
         param2.t = _loc3_;
         param2.clamp();
      }
      
      public function clone() : BigInteger
      {
         var _loc1_:BigInteger = new BigInteger();
         this.copyTo(_loc1_);
         return _loc1_;
      }
      
      public function pow(param1:int) : BigInteger
      {
         return exp(param1,new NullReduction());
      }
      
      public function flipBit(param1:int) : BigInteger
      {
         return changeBit(param1,op_xor);
      }
      
      public function xor(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         bitwiseTo(param1,op_xor,_loc2_);
         return _loc2_;
      }
      
      public function or(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = new BigInteger();
         bitwiseTo(param1,op_or,_loc2_);
         return _loc2_;
      }
      
      public function max(param1:BigInteger) : BigInteger
      {
         return compareTo(param1) > 0 ? {} : param1;
      }
      
      bi_internal function fromInt(param1:int) : void
      {
         t = 1;
         s = param1 < 0 ? -1 : 0;
         if(param1 > 0)
         {
            bi_internal::a[0] = param1;
         }
         else if(param1 < -1)
         {
            bi_internal::a[0] = param1 + const_67;
         }
         else
         {
            t = 0;
         }
      }
      
      bi_internal function isEven() : Boolean
      {
         return (t > 0 ? 0 : bi_internal::s) == 0;
      }
      
      public function toString(param1:Number = 16) : String
      {
         var _loc2_:int = 0;
         if(bi_internal::s < 0)
         {
            return "-" + negate().toString(param1);
         }
         switch(param1)
         {
            case 2:
               _loc2_ = 1;
               break;
            case 4:
               _loc2_ = 2;
               break;
            case 8:
               _loc2_ = 3;
               break;
            case 16:
               _loc2_ = 4;
               break;
            case 32:
               _loc2_ = 5;
               break;
            default:
               _loc2_ = 4;
         }
         var _loc3_:int = (1 << _loc2_) - 1;
         var _loc4_:* = 0;
         var _loc5_:Boolean = false;
         var _loc6_:String = "";
         var _loc7_:int = t;
         var _loc8_:int = const_26 - _loc7_ * const_26 % _loc2_;
         if(_loc7_-- > 0)
         {
            if(_loc8_ < const_26 && _loc9_ > 0)
            {
               _loc5_ = true;
               _loc6_ = _loc4_.toString(36);
            }
            while(_loc7_ >= 0)
            {
               if(_loc8_ < _loc2_)
               {
                  _loc4_ = (0 & (1 << _loc8_) - 1) << _loc2_ - _loc8_;
                  var _loc9_:* = _loc8_ + (const_26 - _loc2_);
                  _loc8_ += const_26 - _loc2_;
                  _loc4_ |= 0 >> _loc9_;
               }
               else
               {
                  _loc9_ = _loc8_ - _loc2_;
                  _loc8_ -= _loc2_;
                  _loc4_ = 0 >> _loc9_ & _loc3_;
                  if(_loc8_ <= 0)
                  {
                     _loc8_ += const_26;
                     _loc7_--;
                  }
               }
               if(_loc4_ > 0)
               {
                  _loc5_ = true;
               }
               if(_loc5_)
               {
                  _loc6_ += _loc4_.toString(36);
               }
            }
         }
         return !!_loc5_ ? _loc6_ : "0";
      }
      
      public function setBit(param1:int) : BigInteger
      {
         return changeBit(param1,op_or);
      }
      
      public function abs() : BigInteger
      {
         return bi_internal::s < 0 ? negate() : this;
      }
      
      bi_internal function nbits(param1:int) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = 1;
         var _loc4_:* = param1 >>> 16;
         _loc3_ = param1 >>> 16;
         if(_loc4_ != 0)
         {
            param1 = _loc3_;
            _loc2_ += 16;
         }
         _loc4_ = param1 >> 8;
         _loc3_ = param1 >> 8;
         if(_loc4_ != 0)
         {
            param1 = _loc3_;
            _loc2_ += 8;
         }
         _loc4_ = param1 >> 4;
         _loc3_ = param1 >> 4;
         if(_loc4_ != 0)
         {
            param1 = _loc3_;
            _loc2_ += 4;
         }
         _loc4_ = param1 >> 2;
         _loc3_ = param1 >> 2;
         if(_loc4_ != 0)
         {
            param1 = _loc3_;
            _loc2_ += 2;
         }
         _loc4_ = param1 >> 1;
         _loc3_ = param1 >> 1;
         if(_loc4_ != 0)
         {
            param1 = _loc3_;
            _loc2_ += 1;
         }
         return _loc2_;
      }
      
      public function sigNum() : int
      {
         if(bi_internal::s < 0)
         {
            return -1;
         }
         if(t <= 0 || t == 1 && true)
         {
            return 0;
         }
         return 1;
      }
      
      public function toByteArray() : ByteArray
      {
         var _loc4_:* = 0;
         var _loc1_:int = t;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_[0] = bi_internal::s;
         var _loc3_:int = const_26 - _loc1_ * const_26 % 8;
         var _loc5_:int = 0;
         if(_loc1_-- > 0)
         {
            if(_loc3_ < const_26 && _loc6_ != (bi_internal::s & const_66) >> _loc3_)
            {
               var _loc6_:*;
               _loc2_[_loc6_ = _loc5_++] = _loc4_ | bi_internal::s << const_26 - _loc3_;
            }
            while(_loc1_ >= 0)
            {
               if(_loc3_ < 8)
               {
                  _loc4_ = (0 & (1 << _loc3_) - 1) << 8 - _loc3_;
                  _loc6_ = _loc3_ + (const_26 - 8);
                  _loc3_ += const_26 - 8;
                  _loc4_ |= 0 >> _loc6_;
               }
               else
               {
                  _loc6_ = _loc3_ - 8;
                  _loc3_ -= 8;
                  _loc4_ = 0 >> _loc6_ & 255;
                  if(_loc3_ <= 0)
                  {
                     _loc3_ += const_26;
                     _loc1_--;
                  }
               }
               if((_loc4_ & 128) != 0)
               {
                  _loc4_ |= -256;
               }
               if(_loc5_ == 0 && (bi_internal::s & 128) != (_loc4_ & 128))
               {
                  _loc5_++;
               }
               if(_loc5_ > 0 || _loc4_ != bi_internal::s)
               {
                  _loc2_[_loc6_ = _loc5_++] = _loc4_;
               }
            }
         }
         return _loc2_;
      }
      
      bi_internal function squareTo(param1:BigInteger) : void
      {
         var _loc4_:int = 0;
         var _loc2_:BigInteger = abs();
         var _loc5_:* = 2 * _loc2_.t;
         param1.t = 2 * _loc2_.t;
         var _loc3_:int = _loc5_;
         while(--_loc3_ >= 0)
         {
            param1.a[_loc3_] = 0;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc2_.t - 1)
         {
            _loc4_ = _loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2 * _loc3_,0,1);
            _loc5_ = param1.a[_loc3_ + _loc2_.t] + _loc2_.am(_loc3_ + 1,2 * _loc2_.a[_loc3_],param1,2 * _loc3_ + 1,_loc4_,_loc2_.t - _loc3_ - 1);
            param1.a[_loc3_ + _loc2_.t] += _loc2_.am(_loc3_ + 1,2 * _loc2_.a[_loc3_],param1,2 * _loc3_ + 1,_loc4_,_loc2_.t - _loc3_ - 1);
            if(_loc5_ >= const_67)
            {
               param1.a[_loc3_ + _loc2_.t] -= const_67;
               param1.a[_loc3_ + _loc2_.t + 1] = 1;
            }
            _loc3_++;
         }
         if(param1.t > 0)
         {
            param1.a[param1.t - 1] += _loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2 * _loc3_,0,1);
         }
         param1.s = 0;
         param1.clamp();
      }
      
      private function op_and(param1:int, param2:int) : int
      {
         return param1 & param2;
      }
      
      public function fromRadix(param1:String, param2:int = 10) : void
      {
         var _loc9_:int = 0;
         fromInt(0);
         var _loc3_:int = chunkSize(param2);
         var _loc4_:Number = Math.pow(param2,_loc3_);
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = intAt(param1,_loc8_);
            if(_loc9_ < 0)
            {
               if(param1.charAt(_loc8_) == "-" && sigNum() == 0)
               {
                  _loc5_ = true;
               }
            }
            else
            {
               _loc7_ = param2 * _loc7_ + _loc9_;
               if(++_loc6_ >= _loc3_)
               {
                  dMultiply(_loc4_);
                  dAddOffset(_loc7_,0);
                  _loc6_ = 0;
                  _loc7_ = 0;
               }
            }
            _loc8_++;
         }
         if(_loc6_ > 0)
         {
            dMultiply(Math.pow(param2,_loc6_));
            dAddOffset(_loc7_,0);
         }
         if(_loc5_)
         {
            BigInteger.const_146.subTo(this,this);
         }
      }
      
      bi_internal function dlShiftTo(param1:int, param2:BigInteger) : void
      {
         var _loc3_:int = 0;
         _loc3_ = t - 1;
         while(_loc3_ >= 0)
         {
            param2.a[_loc3_ + param1] = bi_internal::a[_loc3_];
            _loc3_--;
         }
         _loc3_ = param1 - 1;
         while(_loc3_ >= 0)
         {
            param2.a[_loc3_] = 0;
            _loc3_--;
         }
         param2.t = t + param1;
         param2.s = bi_internal::s;
      }
      
      private function op_xor(param1:int, param2:int) : int
      {
         return param1 ^ param2;
      }
   }
}
