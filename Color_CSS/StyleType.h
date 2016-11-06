//
//  StyleType.h
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

#ifndef StyleType_h
#define StyleType_h
@import Foundation;
//global macro helpers
#define DH_Str(I) #I
#define __DH_STRING_ENUM(PREFIX, SUFFIX, PREFIX2, SUFFIX2) \
static PREFIX PREFIX##_##SUFFIX = @DH_Str(PREFIX2##SUFFIX2);
#define _DH_STRING_ENUM2(PREFIX, SUFFIX, VAL) \
static PREFIX PREFIX##_##SUFFIX = VAL;
#define _DH_STRING_ENUM(T,I) \
__DH_STRING_ENUM(T, I, T, I)
//------ file dependent
typedef NSString * DHColorKey NS_STRING_ENUM;
#define DH_STRING_ENUM(I) \
_DH_STRING_ENUM(DHColorKey, I)
#define DH_STRING_ENUM2(I,J) \
_DH_STRING_ENUM2(DHColorKey, I, J)

// make swift objc enums
DH_STRING_ENUM(Theme)
DH_STRING_ENUM(DarkRed)
DH_STRING_ENUM(Red)
DH_STRING_ENUM(LightRed)

// undef so same macro can be reused
#undef DH_STRING_ENUM
#undef DH_STRING_ENUM2

//------ file dependent
typedef NSString * DHFontKey NS_EXTENSIBLE_STRING_ENUM;
#define DH_STRING_ENUM(I) \
_DH_STRING_ENUM(DHFontKey, I)
#define DH_STRING_ENUM2(I,J) \
_DH_STRING_ENUM2(DHFontKey, I, J)

// make swift objc enums
DH_STRING_ENUM(Theme)

// undef so same macro can be reused
#undef DH_STRING_ENUM
#undef DH_STRING_ENUM2

#endif /* StyleType_h */
