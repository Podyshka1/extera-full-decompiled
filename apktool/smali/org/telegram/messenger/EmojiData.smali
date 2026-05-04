.class public Lorg/telegram/messenger/EmojiData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aliasNew:[Ljava/lang/String;

.field public static final aliasOld:[Ljava/lang/String;

.field public static final data:[[Ljava/lang/String;

.field public static final dataChars:[C

.field public static final dataCharsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final dataColored:[[Ljava/lang/String;

.field public static final emojiAliasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final emojiBigColored:[Ljava/lang/String;

.field public static final emojiBigColoredMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final emojiColored:[Ljava/lang/String;

.field public static final emojiColoredMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final emojiSecret:[Ljava/lang/String;

.field public static final emojiToFE0F:[C

.field public static final emojiToFE0FMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 162

    const/16 v0, 0x73

    .line 17
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiToFE0F:[C

    const/16 v2, 0xa7

    .line 32
    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lorg/telegram/messenger/EmojiData;->dataChars:[C

    const/16 v3, 0x14d

    .line 52
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "\ud83d\ude09"

    aput-object v5, v3, v4

    const-string/jumbo v5, "\ud83d\ude0d"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    const-string/jumbo v7, "\ud83d\ude1b"

    aput-object v7, v3, v5

    const/4 v7, 0x3

    const-string/jumbo v8, "\ud83d\ude2d"

    aput-object v8, v3, v7

    const/4 v8, 0x4

    const-string/jumbo v9, "\ud83d\ude31"

    aput-object v9, v3, v8

    const/4 v9, 0x5

    const-string/jumbo v10, "\ud83d\ude21"

    aput-object v10, v3, v9

    const/4 v10, 0x6

    const-string/jumbo v11, "\ud83d\ude0e"

    aput-object v11, v3, v10

    const/4 v11, 0x7

    const-string/jumbo v12, "\ud83d\ude34"

    aput-object v12, v3, v11

    const/16 v12, 0x8

    const-string/jumbo v13, "\ud83d\ude35"

    aput-object v13, v3, v12

    const-string/jumbo v13, "\ud83d\ude08"

    const/16 v14, 0x9

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude2c"

    const/16 v14, 0xa

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude07"

    const/16 v14, 0xb

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude0f"

    const/16 v14, 0xc

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc6e"

    const/16 v14, 0xd

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc77"

    const/16 v14, 0xe

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc82"

    const/16 v14, 0xf

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc76"

    const/16 v14, 0x10

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc68"

    const/16 v14, 0x11

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc69"

    const/16 v14, 0x12

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc74"

    const/16 v14, 0x13

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc75"

    const/16 v14, 0x14

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude3b"

    const/16 v14, 0x15

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude3d"

    const/16 v14, 0x16

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude40"

    const/16 v14, 0x17

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc7a"

    const/16 v14, 0x18

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude48"

    const/16 v14, 0x19

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude49"

    const/16 v14, 0x1a

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\ude4a"

    const/16 v14, 0x1b

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc80"

    const/16 v14, 0x1c

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc7d"

    const/16 v14, 0x1d

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udca9"

    const/16 v14, 0x1e

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udd25"

    const/16 v14, 0x1f

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udca5"

    const/16 v14, 0x20

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udca4"

    const/16 v14, 0x21

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc42"

    const/16 v14, 0x22

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc40"

    const/16 v14, 0x23

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udc43"

    const/16 v15, 0x24

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc45"

    const/16 v15, 0x25

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc44"

    const/16 v15, 0x26

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc4d"

    const/16 v15, 0x27

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc4e"

    const/16 v15, 0x28

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc4c"

    const/16 v15, 0x29

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc4a"

    const/16 v15, 0x2a

    aput-object v13, v3, v15

    const-string/jumbo v13, "\u270c"

    const/16 v16, 0x2b

    aput-object v13, v3, v16

    const-string/jumbo v13, "\u270b"

    const/16 v16, 0x2c

    aput-object v13, v3, v16

    const-string/jumbo v13, "\ud83d\udc50"

    const/16 v16, 0x2d

    aput-object v13, v3, v16

    const-string/jumbo v13, "\ud83d\udc46"

    const/16 v16, 0x2e

    aput-object v13, v3, v16

    const-string/jumbo v13, "\ud83d\udc47"

    const/16 v16, 0x2f

    aput-object v13, v3, v16

    const-string/jumbo v13, "\ud83d\udc49"

    const/16 v16, 0x30

    aput-object v13, v3, v16

    const-string/jumbo v13, "\ud83d\udc48"

    const/16 v17, 0x31

    aput-object v13, v3, v17

    const-string/jumbo v13, "\ud83d\ude4f"

    const/16 v18, 0x32

    aput-object v13, v3, v18

    const-string/jumbo v13, "\ud83d\udc4f"

    const/16 v19, 0x33

    aput-object v13, v3, v19

    const-string/jumbo v13, "\ud83d\udcaa"

    const/16 v20, 0x34

    aput-object v13, v3, v20

    const-string/jumbo v13, "\ud83d\udeb6"

    const/16 v21, 0x35

    aput-object v13, v3, v21

    const-string/jumbo v13, "\ud83c\udfc3"

    const/16 v22, 0x36

    aput-object v13, v3, v22

    const-string/jumbo v13, "\ud83d\udc83"

    const/16 v23, 0x37

    aput-object v13, v3, v23

    const-string/jumbo v13, "\ud83d\udc6b"

    const/16 v24, 0x38

    aput-object v13, v3, v24

    const-string/jumbo v13, "\ud83d\udc6a"

    const/16 v25, 0x39

    aput-object v13, v3, v25

    const-string/jumbo v13, "\ud83d\udc6c"

    const/16 v26, 0x3a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc6d"

    const/16 v26, 0x3b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc85"

    const/16 v26, 0x3c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa9"

    const/16 v26, 0x3d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc51"

    const/16 v26, 0x3e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc52"

    const/16 v26, 0x3f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc5f"

    const/16 v26, 0x40

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc5e"

    const/16 v26, 0x41

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc60"

    const/16 v26, 0x42

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc55"

    const/16 v26, 0x43

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc57"

    const/16 v26, 0x44

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc56"

    const/16 v26, 0x45

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc59"

    const/16 v26, 0x46

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc5c"

    const/16 v26, 0x47

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc53"

    const/16 v26, 0x48

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf80"

    const/16 v26, 0x49

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc84"

    const/16 v26, 0x4a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc9b"

    const/16 v26, 0x4b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc99"

    const/16 v26, 0x4c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc9c"

    const/16 v26, 0x4d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc9a"

    const/16 v26, 0x4e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc8d"

    const/16 v26, 0x4f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc8e"

    const/16 v26, 0x50

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc36"

    const/16 v26, 0x51

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc3a"

    const/16 v26, 0x52

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc31"

    const/16 v26, 0x53

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc2d"

    const/16 v26, 0x54

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc39"

    const/16 v26, 0x55

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc30"

    const/16 v26, 0x56

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc38"

    const/16 v26, 0x57

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc2f"

    const/16 v26, 0x58

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc28"

    const/16 v26, 0x59

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc3b"

    const/16 v26, 0x5a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc37"

    const/16 v26, 0x5b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc2e"

    const/16 v26, 0x5c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc17"

    const/16 v26, 0x5d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc34"

    const/16 v26, 0x5e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc11"

    const/16 v26, 0x5f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc18"

    const/16 v26, 0x60

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc3c"

    const/16 v26, 0x61

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc27"

    const/16 v26, 0x62

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc25"

    const/16 v26, 0x63

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc14"

    const/16 v26, 0x64

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc0d"

    const/16 v26, 0x65

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc22"

    const/16 v26, 0x66

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc1b"

    const/16 v26, 0x67

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc1d"

    const/16 v26, 0x68

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc1c"

    const/16 v26, 0x69

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc1e"

    const/16 v26, 0x6a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc0c"

    const/16 v26, 0x6b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc19"

    const/16 v26, 0x6c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc1a"

    const/16 v26, 0x6d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc1f"

    const/16 v26, 0x6e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc2c"

    const/16 v26, 0x6f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc0b"

    const/16 v26, 0x70

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc10"

    const/16 v26, 0x71

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc0a"

    const/16 v26, 0x72

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc2b"

    aput-object v13, v3, v0

    const-string/jumbo v13, "\ud83c\udf40"

    const/16 v26, 0x74

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf39"

    const/16 v26, 0x75

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf3b"

    const/16 v26, 0x76

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf41"

    const/16 v26, 0x77

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf3e"

    const/16 v26, 0x78

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf44"

    const/16 v26, 0x79

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf35"

    const/16 v26, 0x7a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf34"

    const/16 v26, 0x7b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf33"

    const/16 v26, 0x7c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf1e"

    const/16 v26, 0x7d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf1a"

    const/16 v26, 0x7e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf19"

    const/16 v26, 0x7f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf0e"

    const/16 v26, 0x80

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf0b"

    const/16 v26, 0x81

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26a1"

    const/16 v26, 0x82

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2614"

    const/16 v26, 0x83

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2744"

    const/16 v26, 0x84

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26c4"

    const/16 v26, 0x85

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf00"

    const/16 v26, 0x86

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf08"

    const/16 v26, 0x87

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf0a"

    const/16 v26, 0x88

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf93"

    const/16 v26, 0x89

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf86"

    const/16 v26, 0x8a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf83"

    const/16 v26, 0x8b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc7b"

    const/16 v26, 0x8c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf85"

    const/16 v26, 0x8d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf84"

    const/16 v26, 0x8e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf81"

    const/16 v26, 0x8f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf88"

    const/16 v26, 0x90

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd2e"

    const/16 v26, 0x91

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa5"

    const/16 v26, 0x92

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcf7"

    const/16 v26, 0x93

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcbf"

    const/16 v26, 0x94

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcbb"

    const/16 v26, 0x95

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u260e"

    const/16 v26, 0x96

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udce1"

    const/16 v26, 0x97

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcfa"

    const/16 v26, 0x98

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcfb"

    const/16 v26, 0x99

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd09"

    const/16 v26, 0x9a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd14"

    const/16 v26, 0x9b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u23f3"

    const/16 v26, 0x9c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u23f0"

    const/16 v26, 0x9d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u231a"

    const/16 v26, 0x9e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd12"

    const/16 v26, 0x9f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd11"

    const/16 v26, 0xa0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd0e"

    const/16 v26, 0xa1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udca1"

    const/16 v26, 0xa2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd26"

    const/16 v26, 0xa3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd0c"

    const/16 v26, 0xa4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd0b"

    const/16 v26, 0xa5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udebf"

    const/16 v26, 0xa6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udebd"

    const/16 v26, 0xa7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd27"

    const/16 v26, 0xa8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd28"

    const/16 v26, 0xa9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeaa"

    const/16 v26, 0xaa

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeac"

    const/16 v26, 0xab

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udca3"

    const/16 v26, 0xac

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd2b"

    const/16 v26, 0xad

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd2a"

    const/16 v26, 0xae

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc8a"

    const/16 v26, 0xaf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc89"

    const/16 v26, 0xb0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcb0"

    const/16 v26, 0xb1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcb5"

    const/16 v26, 0xb2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcb3"

    const/16 v26, 0xb3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2709"

    const/16 v26, 0xb4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udceb"

    const/16 v26, 0xb5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udce6"

    const/16 v26, 0xb6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcc5"

    const/16 v26, 0xb7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcc1"

    const/16 v26, 0xb8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2702"

    const/16 v26, 0xb9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udccc"

    const/16 v26, 0xba

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcce"

    const/16 v26, 0xbb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2712"

    const/16 v26, 0xbc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u270f"

    const/16 v26, 0xbd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcd0"

    const/16 v26, 0xbe

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcda"

    const/16 v26, 0xbf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd2c"

    const/16 v26, 0xc0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd2d"

    const/16 v26, 0xc1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa8"

    const/16 v26, 0xc2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfac"

    const/16 v26, 0xc3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa4"

    const/16 v26, 0xc4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa7"

    const/16 v26, 0xc5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb5"

    const/16 v26, 0xc6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb9"

    const/16 v26, 0xc7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfbb"

    const/16 v26, 0xc8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfba"

    const/16 v26, 0xc9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb8"

    const/16 v26, 0xca

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc7e"

    const/16 v26, 0xcb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfae"

    const/16 v26, 0xcc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udccf"

    const/16 v26, 0xcd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb2"

    const/16 v26, 0xce

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfaf"

    const/16 v26, 0xcf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc8"

    const/16 v26, 0xd0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc0"

    const/16 v26, 0xd1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26bd"

    const/16 v26, 0xd2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26be"

    const/16 v26, 0xd3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfbe"

    const/16 v26, 0xd4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb1"

    const/16 v26, 0xd5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc9"

    const/16 v26, 0xd6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb3"

    const/16 v26, 0xd7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc1"

    const/16 v26, 0xd8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc7"

    const/16 v26, 0xd9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc6"

    const/16 v26, 0xda

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfca"

    const/16 v26, 0xdb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc4"

    const/16 v26, 0xdc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2615"

    const/16 v26, 0xdd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf7c"

    const/16 v26, 0xde

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf7a"

    const/16 v26, 0xdf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf77"

    const/16 v26, 0xe0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf74"

    const/16 v26, 0xe1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf55"

    const/16 v26, 0xe2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf54"

    const/16 v26, 0xe3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf5f"

    const/16 v26, 0xe4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf57"

    const/16 v26, 0xe5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf71"

    const/16 v26, 0xe6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf5a"

    const/16 v26, 0xe7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf5c"

    const/16 v26, 0xe8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf61"

    const/16 v26, 0xe9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf73"

    const/16 v26, 0xea

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf5e"

    const/16 v26, 0xeb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf69"

    const/16 v26, 0xec

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf66"

    const/16 v26, 0xed

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf82"

    const/16 v26, 0xee

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf70"

    const/16 v26, 0xef

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf6a"

    const/16 v26, 0xf0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf6b"

    const/16 v26, 0xf1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf6d"

    const/16 v26, 0xf2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf6f"

    const/16 v26, 0xf3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf4e"

    const/16 v26, 0xf4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf4f"

    const/16 v26, 0xf5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf4a"

    const/16 v26, 0xf6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf4b"

    const/16 v26, 0xf7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf52"

    const/16 v26, 0xf8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf47"

    const/16 v26, 0xf9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf49"

    const/16 v26, 0xfa

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf53"

    const/16 v26, 0xfb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf51"

    const/16 v26, 0xfc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf4c"

    const/16 v26, 0xfd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf50"

    const/16 v26, 0xfe

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf4d"

    const/16 v26, 0xff

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf46"

    const/16 v26, 0x100

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf45"

    const/16 v26, 0x101

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf3d"

    const/16 v26, 0x102

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfe1"

    const/16 v26, 0x103

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfe5"

    const/16 v26, 0x104

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfe6"

    const/16 v26, 0x105

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26ea"

    const/16 v26, 0x106

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udff0"

    const/16 v26, 0x107

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26fa"

    const/16 v26, 0x108

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfed"

    const/16 v26, 0x109

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\uddfb"

    const/16 v26, 0x10a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\uddfd"

    const/16 v26, 0x10b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa0"

    const/16 v26, 0x10c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa1"

    const/16 v26, 0x10d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26f2"

    const/16 v26, 0x10e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfa2"

    const/16 v26, 0x10f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea2"

    const/16 v26, 0x110

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea4"

    const/16 v26, 0x111

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2693"

    const/16 v26, 0x112

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude80"

    const/16 v26, 0x113

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2708"

    const/16 v26, 0x114

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude81"

    const/16 v26, 0x115

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude82"

    const/16 v26, 0x116

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude8b"

    const/16 v26, 0x117

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude8e"

    const/16 v26, 0x118

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude8c"

    const/16 v26, 0x119

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude99"

    const/16 v26, 0x11a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude97"

    const/16 v26, 0x11b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude95"

    const/16 v26, 0x11c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude9b"

    const/16 v26, 0x11d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea8"

    const/16 v26, 0x11e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude94"

    const/16 v26, 0x11f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude92"

    const/16 v26, 0x120

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude91"

    const/16 v26, 0x121

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb2"

    const/16 v26, 0x122

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea0"

    const/16 v26, 0x123

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude9c"

    const/16 v26, 0x124

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea6"

    const/16 v26, 0x125

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26a0"

    const/16 v26, 0x126

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea7"

    const/16 v26, 0x127

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26fd"

    const/16 v26, 0x128

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfb0"

    const/16 v26, 0x129

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\uddff"

    const/16 v26, 0x12a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfaa"

    const/16 v26, 0x12b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfad"

    const/16 v26, 0x12c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddef\ud83c\uddf5"

    const/16 v26, 0x12d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddf0\ud83c\uddf7"

    const/16 v26, 0x12e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udde9\ud83c\uddea"

    const/16 v26, 0x12f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udde8\ud83c\uddf3"

    const/16 v26, 0x130

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddfa\ud83c\uddf8"

    const/16 v26, 0x131

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddeb\ud83c\uddf7"

    const/16 v26, 0x132

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddea\ud83c\uddf8"

    const/16 v26, 0x133

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddee\ud83c\uddf9"

    const/16 v26, 0x134

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddf7\ud83c\uddfa"

    const/16 v26, 0x135

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\uddec\ud83c\udde7"

    const/16 v26, 0x136

    aput-object v13, v3, v26

    const-string v13, "1\u20e3"

    const/16 v26, 0x137

    aput-object v13, v3, v26

    const-string v13, "2\u20e3"

    const/16 v26, 0x138

    aput-object v13, v3, v26

    const-string v13, "3\u20e3"

    const/16 v26, 0x139

    aput-object v13, v3, v26

    const-string v13, "4\u20e3"

    const/16 v26, 0x13a

    aput-object v13, v3, v26

    const-string v13, "5\u20e3"

    const/16 v26, 0x13b

    aput-object v13, v3, v26

    const-string v13, "6\u20e3"

    const/16 v26, 0x13c

    aput-object v13, v3, v26

    const-string v13, "7\u20e3"

    const/16 v26, 0x13d

    aput-object v13, v3, v26

    const-string v13, "8\u20e3"

    const/16 v26, 0x13e

    aput-object v13, v3, v26

    const-string v13, "9\u20e3"

    const/16 v26, 0x13f

    aput-object v13, v3, v26

    const-string v13, "0\u20e3"

    const/16 v26, 0x140

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd1f"

    const/16 v26, 0x141

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2757"

    const/16 v26, 0x142

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2753"

    const/16 v26, 0x143

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2665"

    const/16 v26, 0x144

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u2666"

    const/16 v26, 0x145

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udcaf"

    const/16 v26, 0x146

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd17"

    const/16 v26, 0x147

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd31"

    const/16 v26, 0x148

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd34"

    const/16 v26, 0x149

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd35"

    const/16 v26, 0x14a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd36"

    const/16 v26, 0x14b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd37"

    const/16 v26, 0x14c

    aput-object v13, v3, v26

    sput-object v3, Lorg/telegram/messenger/EmojiData;->emojiSecret:[Ljava/lang/String;

    const/16 v3, 0x133

    .line 65
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v13, "\ud83e\udef6"

    aput-object v13, v3, v4

    const-string/jumbo v13, "\ud83e\udd32"

    aput-object v13, v3, v6

    const-string/jumbo v13, "\ud83d\udc50"

    aput-object v13, v3, v5

    const-string/jumbo v13, "\ud83d\ude4c"

    aput-object v13, v3, v7

    const-string/jumbo v13, "\ud83d\udc4f"

    aput-object v13, v3, v8

    const-string/jumbo v13, "\ud83d\udc4d"

    aput-object v13, v3, v9

    const-string/jumbo v13, "\ud83d\udc4e"

    aput-object v13, v3, v10

    const-string/jumbo v13, "\ud83d\udc4a"

    aput-object v13, v3, v11

    const-string/jumbo v13, "\u270a"

    aput-object v13, v3, v12

    const-string/jumbo v13, "\ud83e\udd1b"

    const/16 v26, 0x9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd1c"

    const/16 v26, 0xa

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef7"

    const/16 v26, 0xb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef8"

    const/16 v26, 0xc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd1e"

    const/16 v26, 0xd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u270c"

    const/16 v26, 0xe

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef0"

    const/16 v26, 0xf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd1f"

    const/16 v26, 0x10

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd18"

    const/16 v26, 0x11

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc4c"

    const/16 v26, 0x12

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd0c"

    const/16 v26, 0x13

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd0f"

    const/16 v26, 0x14

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef3"

    const/16 v26, 0x15

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef4"

    const/16 v26, 0x16

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc48"

    const/16 v26, 0x17

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc49"

    const/16 v26, 0x18

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc46"

    const/16 v26, 0x19

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc47"

    const/16 v26, 0x1a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u261d"

    const/16 v26, 0x1b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u270b"

    const/16 v26, 0x1c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd1a"

    const/16 v26, 0x1d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd90"

    const/16 v26, 0x1e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd96"

    const/16 v26, 0x1f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc4b"

    const/16 v26, 0x20

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd19"

    const/16 v26, 0x21

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef2"

    const/16 v26, 0x22

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef1"

    aput-object v13, v3, v14

    const-string/jumbo v13, "\ud83d\udcaa"

    const/16 v26, 0x24

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd95"

    const/16 v26, 0x25

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u270d"

    const/16 v26, 0x26

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4f"

    const/16 v26, 0x27

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udef5"

    const/16 v26, 0x28

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb6"

    const/16 v26, 0x29

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb5"

    aput-object v13, v3, v15

    const-string/jumbo v13, "\ud83d\udc42"

    const/16 v26, 0x2b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddbb"

    const/16 v26, 0x2c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc43"

    const/16 v26, 0x2d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc76"

    const/16 v26, 0x2e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc67"

    const/16 v26, 0x2f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd2"

    aput-object v13, v3, v16

    const-string/jumbo v13, "\ud83d\udc66"

    aput-object v13, v3, v17

    const-string/jumbo v13, "\ud83d\udc69"

    aput-object v13, v3, v18

    const-string/jumbo v13, "\ud83e\uddd1"

    aput-object v13, v3, v19

    const-string/jumbo v13, "\ud83d\udc68"

    aput-object v13, v3, v20

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddb1"

    aput-object v13, v3, v21

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddb1"

    aput-object v13, v3, v22

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddb1"

    aput-object v13, v3, v23

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddb0"

    aput-object v13, v3, v24

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddb0"

    aput-object v13, v3, v25

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddb0"

    const/16 v26, 0x3a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc71\u200d\u2640"

    const/16 v26, 0x3b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc71"

    const/16 v26, 0x3c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc71\u200d\u2642"

    const/16 v26, 0x3d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddb3"

    const/16 v26, 0x3e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddb3"

    const/16 v26, 0x3f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddb3"

    const/16 v26, 0x40

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddb2"

    const/16 v26, 0x41

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddb2"

    const/16 v26, 0x42

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddb2"

    const/16 v26, 0x43

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd4\u200d\u2640"

    const/16 v26, 0x44

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd4"

    const/16 v26, 0x45

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd4\u200d\u2642"

    const/16 v26, 0x46

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc75"

    const/16 v26, 0x47

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd3"

    const/16 v26, 0x48

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc74"

    const/16 v26, 0x49

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc72"

    const/16 v26, 0x4a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc73\u200d\u2640"

    const/16 v26, 0x4b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc73"

    const/16 v26, 0x4c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc73\u200d\u2642"

    const/16 v26, 0x4d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd5"

    const/16 v26, 0x4e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc6e\u200d\u2640"

    const/16 v26, 0x4f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc6e"

    const/16 v26, 0x50

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc6e\u200d\u2642"

    const/16 v26, 0x51

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc77\u200d\u2640"

    const/16 v26, 0x52

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc77"

    const/16 v26, 0x53

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc77\u200d\u2642"

    const/16 v26, 0x54

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc82\u200d\u2640"

    const/16 v26, 0x55

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc82"

    const/16 v26, 0x56

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc82\u200d\u2642"

    const/16 v26, 0x57

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd75\u200d\u2640"

    const/16 v26, 0x58

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd75"

    const/16 v26, 0x59

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd75\u200d\u2642"

    const/16 v26, 0x5a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\u2695"

    const/16 v26, 0x5b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\u2695"

    const/16 v26, 0x5c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\u2695"

    const/16 v26, 0x5d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udf3e"

    const/16 v26, 0x5e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udf3e"

    const/16 v26, 0x5f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udf3e"

    const/16 v26, 0x60

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udf73"

    const/16 v26, 0x61

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udf73"

    const/16 v26, 0x62

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udf73"

    const/16 v26, 0x63

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udf93"

    const/16 v26, 0x64

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udf93"

    const/16 v26, 0x65

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udf93"

    const/16 v26, 0x66

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udfa4"

    const/16 v26, 0x67

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udfa4"

    const/16 v26, 0x68

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udfa4"

    const/16 v26, 0x69

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udfeb"

    const/16 v26, 0x6a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udfeb"

    const/16 v26, 0x6b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udfeb"

    const/16 v26, 0x6c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udfed"

    const/16 v26, 0x6d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udfed"

    const/16 v26, 0x6e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udfed"

    const/16 v26, 0x6f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83d\udcbb"

    const/16 v26, 0x70

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83d\udcbb"

    const/16 v26, 0x71

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83d\udcbb"

    const/16 v26, 0x72

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83d\udcbc"

    aput-object v13, v3, v0

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83d\udcbc"

    const/16 v26, 0x74

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83d\udcbc"

    const/16 v26, 0x75

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83d\udd27"

    const/16 v26, 0x76

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83d\udd27"

    const/16 v26, 0x77

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83d\udd27"

    const/16 v26, 0x78

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83d\udd2c"

    const/16 v26, 0x79

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83d\udd2c"

    const/16 v26, 0x7a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83d\udd2c"

    const/16 v26, 0x7b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udfa8"

    const/16 v26, 0x7c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udfa8"

    const/16 v26, 0x7d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udfa8"

    const/16 v26, 0x7e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83d\ude92"

    const/16 v26, 0x7f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83d\ude92"

    const/16 v26, 0x80

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83d\ude92"

    const/16 v26, 0x81

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\u2708"

    const/16 v26, 0x82

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\u2708"

    const/16 v26, 0x83

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\u2708"

    const/16 v26, 0x84

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83d\ude80"

    const/16 v26, 0x85

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83d\ude80"

    const/16 v26, 0x86

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83d\ude80"

    const/16 v26, 0x87

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\u2696"

    const/16 v26, 0x88

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\u2696"

    const/16 v26, 0x89

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\u2696"

    const/16 v26, 0x8a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc70\u200d\u2640"

    const/16 v26, 0x8b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc70"

    const/16 v26, 0x8c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc70\u200d\u2642"

    const/16 v26, 0x8d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd35\u200d\u2640"

    const/16 v26, 0x8e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd35"

    const/16 v26, 0x8f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd35\u200d\u2642"

    const/16 v26, 0x90

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc78"

    const/16 v26, 0x91

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd34"

    const/16 v26, 0x92

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd77"

    const/16 v26, 0x93

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb8\u200d\u2640"

    const/16 v26, 0x94

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb8"

    const/16 v26, 0x95

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb8\u200d\u2642"

    const/16 v26, 0x96

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb9\u200d\u2640"

    const/16 v26, 0x97

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb9"

    const/16 v26, 0x98

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddb9\u200d\u2642"

    const/16 v26, 0x99

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd36"

    const/16 v26, 0x9a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udf84"

    const/16 v26, 0x9b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udf85"

    const/16 v26, 0x9c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd9\u200d\u2640"

    const/16 v26, 0x9d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd9"

    const/16 v26, 0x9e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd9\u200d\u2642"

    const/16 v26, 0x9f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddd\u200d\u2640"

    const/16 v26, 0xa0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddd"

    const/16 v26, 0xa1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddd\u200d\u2642"

    const/16 v26, 0xa2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddb\u200d\u2640"

    const/16 v26, 0xa3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddb"

    const/16 v26, 0xa4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddb\u200d\u2642"

    const/16 v26, 0xa5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddc\u200d\u2640"

    const/16 v26, 0xa6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddc"

    const/16 v26, 0xa7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udddc\u200d\u2642"

    const/16 v26, 0xa8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddda\u200d\u2640"

    const/16 v26, 0xa9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddda"

    const/16 v26, 0xaa

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddda\u200d\u2642"

    const/16 v26, 0xab

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc7c"

    const/16 v26, 0xac

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd30"

    const/16 v26, 0xad

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udec4"

    const/16 v26, 0xae

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udec3"

    const/16 v26, 0xaf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd31"

    const/16 v26, 0xb0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83c\udf7c"

    const/16 v26, 0xb1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83c\udf7c"

    const/16 v26, 0xb2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83c\udf7c"

    const/16 v26, 0xb3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude47\u200d\u2640"

    const/16 v26, 0xb4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude47"

    const/16 v26, 0xb5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude47\u200d\u2642"

    const/16 v26, 0xb6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc81\u200d\u2640"

    const/16 v26, 0xb7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc81"

    const/16 v26, 0xb8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc81\u200d\u2642"

    const/16 v26, 0xb9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude45\u200d\u2640"

    const/16 v26, 0xba

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude45"

    const/16 v26, 0xbb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude45\u200d\u2642"

    const/16 v26, 0xbc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude46\u200d\u2640"

    const/16 v26, 0xbd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude46"

    const/16 v26, 0xbe

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude46\u200d\u2642"

    const/16 v26, 0xbf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4b\u200d\u2640"

    const/16 v26, 0xc0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4b"

    const/16 v26, 0xc1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4b\u200d\u2642"

    const/16 v26, 0xc2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddcf\u200d\u2640"

    const/16 v26, 0xc3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddcf"

    const/16 v26, 0xc4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddcf\u200d\u2642"

    const/16 v26, 0xc5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd26\u200d\u2640"

    const/16 v26, 0xc6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd26"

    const/16 v26, 0xc7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd26\u200d\u2642"

    const/16 v26, 0xc8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd37\u200d\u2640"

    const/16 v26, 0xc9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd37"

    const/16 v26, 0xca

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd37\u200d\u2642"

    const/16 v26, 0xcb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4e\u200d\u2640"

    const/16 v26, 0xcc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4e"

    const/16 v26, 0xcd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4e\u200d\u2642"

    const/16 v26, 0xce

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4d\u200d\u2640"

    const/16 v26, 0xcf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4d"

    const/16 v26, 0xd0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\ude4d\u200d\u2642"

    const/16 v26, 0xd1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc87\u200d\u2640"

    const/16 v26, 0xd2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc87"

    const/16 v26, 0xd3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc87\u200d\u2642"

    const/16 v26, 0xd4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc86\u200d\u2640"

    const/16 v26, 0xd5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc86"

    const/16 v26, 0xd6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc86\u200d\u2642"

    const/16 v26, 0xd7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd6\u200d\u2640"

    const/16 v26, 0xd8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd6"

    const/16 v26, 0xd9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd6\u200d\u2642"

    const/16 v26, 0xda

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc85"

    const/16 v26, 0xdb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd33"

    const/16 v26, 0xdc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc83"

    const/16 v26, 0xdd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd7a"

    const/16 v26, 0xde

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udd74"

    const/16 v26, 0xdf

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddbd"

    const/16 v26, 0xe0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddbd"

    const/16 v26, 0xe1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddbd"

    const/16 v26, 0xe2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddbd\u200d\u27a1"

    const/16 v26, 0xe3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddbd\u200d\u27a1"

    const/16 v26, 0xe4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddbd\u200d\u27a1"

    const/16 v26, 0xe5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddbc"

    const/16 v26, 0xe6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddbc"

    const/16 v26, 0xe7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddbc"

    const/16 v26, 0xe8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddbc\u200d\u27a1"

    const/16 v26, 0xe9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddbc\u200d\u27a1"

    const/16 v26, 0xea

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddbc\u200d\u27a1"

    const/16 v26, 0xeb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb6\u200d\u2640"

    const/16 v26, 0xec

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb6"

    const/16 v26, 0xed

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb6\u200d\u2642"

    const/16 v26, 0xee

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb6\u200d\u2640\u200d\u27a1"

    const/16 v26, 0xef

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb6\u200d\u27a1"

    const/16 v26, 0xf0

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb6\u200d\u2642\u200d\u27a1"

    const/16 v26, 0xf1

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddaf"

    const/16 v26, 0xf2

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddaf"

    const/16 v26, 0xf3

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddaf"

    const/16 v26, 0xf4

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc69\u200d\ud83e\uddaf\u200d\u27a1"

    const/16 v26, 0xf5

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd1\u200d\ud83e\uddaf\u200d\u27a1"

    const/16 v26, 0xf6

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udc68\u200d\ud83e\uddaf\u200d\u27a1"

    const/16 v26, 0xf7

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddce\u200d\u2640"

    const/16 v26, 0xf8

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddce"

    const/16 v26, 0xf9

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddce\u200d\u2642"

    const/16 v26, 0xfa

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc3\u200d\u2640"

    const/16 v26, 0xfb

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc3"

    const/16 v26, 0xfc

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc3\u200d\u2642"

    const/16 v26, 0xfd

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc3\u200d\u2640\u200d\u27a1"

    const/16 v26, 0xfe

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc3\u200d\u27a1"

    const/16 v26, 0xff

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc3\u200d\u2642\u200d\u27a1"

    const/16 v26, 0x100

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddce\u200d\u2640\u200d\u27a1"

    const/16 v26, 0x101

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddce\u200d\u27a1"

    const/16 v26, 0x102

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddce\u200d\u2642\u200d\u27a1"

    const/16 v26, 0x103

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddcd\u200d\u2640"

    const/16 v26, 0x104

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddcd"

    const/16 v26, 0x105

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddcd\u200d\u2642"

    const/16 v26, 0x106

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfcb\u200d\u2640"

    const/16 v26, 0x107

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfcb"

    const/16 v26, 0x108

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfcb\u200d\u2642"

    const/16 v26, 0x109

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd38\u200d\u2640"

    const/16 v26, 0x10a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd38"

    const/16 v26, 0x10b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd38\u200d\u2642"

    const/16 v26, 0x10c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26f9\u200d\u2640"

    const/16 v26, 0x10d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26f9"

    const/16 v26, 0x10e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\u26f9\u200d\u2642"

    const/16 v26, 0x10f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd3e\u200d\u2640"

    const/16 v26, 0x110

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd3e"

    const/16 v26, 0x111

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd3e\u200d\u2642"

    const/16 v26, 0x112

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfcc\u200d\u2640"

    const/16 v26, 0x113

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfcc"

    const/16 v26, 0x114

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfcc\u200d\u2642"

    const/16 v26, 0x115

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc7"

    const/16 v26, 0x116

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd8\u200d\u2640"

    const/16 v26, 0x117

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd8"

    const/16 v26, 0x118

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd8\u200d\u2642"

    const/16 v26, 0x119

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc4\u200d\u2640"

    const/16 v26, 0x11a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc4"

    const/16 v26, 0x11b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfc4\u200d\u2642"

    const/16 v26, 0x11c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfca\u200d\u2640"

    const/16 v26, 0x11d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfca"

    const/16 v26, 0x11e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83c\udfca\u200d\u2642"

    const/16 v26, 0x11f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd3d\u200d\u2640"

    const/16 v26, 0x120

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd3d"

    const/16 v26, 0x121

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd3d\u200d\u2642"

    const/16 v26, 0x122

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea3\u200d\u2640"

    const/16 v26, 0x123

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea3"

    const/16 v26, 0x124

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udea3\u200d\u2642"

    const/16 v26, 0x125

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd7\u200d\u2640"

    const/16 v26, 0x126

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd7"

    const/16 v26, 0x127

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\uddd7\u200d\u2642"

    const/16 v26, 0x128

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb5\u200d\u2640"

    const/16 v26, 0x129

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb5"

    const/16 v26, 0x12a

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb5\u200d\u2642"

    const/16 v26, 0x12b

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb4\u200d\u2640"

    const/16 v26, 0x12c

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb4"

    const/16 v26, 0x12d

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udeb4\u200d\u2642"

    const/16 v26, 0x12e

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd39\u200d\u2640"

    const/16 v26, 0x12f

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd39"

    const/16 v26, 0x130

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83e\udd39\u200d\u2642"

    const/16 v26, 0x131

    aput-object v13, v3, v26

    const-string/jumbo v13, "\ud83d\udec0"

    const/16 v26, 0x132

    aput-object v13, v3, v26

    sput-object v3, Lorg/telegram/messenger/EmojiData;->emojiColored:[Ljava/lang/String;

    .line 69
    const-string/jumbo v36, "\ud83d\udc8f"

    const-string/jumbo v37, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    const-string/jumbo v27, "\ud83d\udc6b"

    const-string/jumbo v28, "\ud83d\udc6d"

    const-string/jumbo v29, "\ud83d\udc6c"

    const-string/jumbo v30, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc68"

    const-string/jumbo v31, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    const-string/jumbo v32, "\ud83d\udc91"

    const-string/jumbo v33, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc68"

    const-string/jumbo v34, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    const-string/jumbo v35, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69"

    filled-new-array/range {v27 .. v37}, [Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lorg/telegram/messenger/EmojiData;->emojiBigColored:[Ljava/lang/String;

    move/from16 v26, v0

    .line 73
    new-array v0, v12, [[Ljava/lang/String;

    move/from16 v27, v4

    const/16 v4, 0x1e0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v28, "\ud83d\ude00"

    aput-object v28, v4, v27

    const-string/jumbo v28, "\ud83d\ude03"

    aput-object v28, v4, v6

    const-string/jumbo v28, "\ud83d\ude04"

    aput-object v28, v4, v5

    const-string/jumbo v28, "\ud83d\ude01"

    aput-object v28, v4, v7

    const-string/jumbo v28, "\ud83d\ude06"

    aput-object v28, v4, v8

    const-string/jumbo v28, "\ud83e\udd79"

    aput-object v28, v4, v9

    const-string/jumbo v28, "\ud83d\ude05"

    aput-object v28, v4, v10

    const-string/jumbo v28, "\ud83d\ude02"

    aput-object v28, v4, v11

    const-string/jumbo v28, "\ud83e\udd23"

    aput-object v28, v4, v12

    const-string/jumbo v28, "\ud83e\udd72"

    const/16 v29, 0x9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u263a"

    const/16 v29, 0xa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude0a"

    const/16 v29, 0xb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude07"

    const/16 v29, 0xc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude42"

    const/16 v29, 0xd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude43"

    const/16 v29, 0xe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude09"

    const/16 v29, 0xf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude0c"

    const/16 v29, 0x10

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude0d"

    const/16 v29, 0x11

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd70"

    const/16 v29, 0x12

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude18"

    const/16 v29, 0x13

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude17"

    const/16 v29, 0x14

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude19"

    const/16 v29, 0x15

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude1a"

    const/16 v29, 0x16

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude0b"

    const/16 v29, 0x17

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude1b"

    const/16 v29, 0x18

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude1d"

    const/16 v29, 0x19

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude1c"

    const/16 v29, 0x1a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd2a"

    const/16 v29, 0x1b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd28"

    const/16 v29, 0x1c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd0"

    const/16 v29, 0x1d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd13"

    const/16 v29, 0x1e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude0e"

    const/16 v29, 0x1f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd78"

    const/16 v29, 0x20

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd29"

    const/16 v29, 0x21

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd73"

    const/16 v29, 0x22

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude42\u200d\u2195"

    aput-object v28, v4, v14

    const-string/jumbo v28, "\ud83d\ude0f"

    const/16 v29, 0x24

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude12"

    const/16 v29, 0x25

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude42\u200d\u2194"

    const/16 v29, 0x26

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude1e"

    const/16 v29, 0x27

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude14"

    const/16 v29, 0x28

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude1f"

    const/16 v29, 0x29

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude15"

    aput-object v28, v4, v15

    const-string/jumbo v28, "\ud83d\ude41"

    const/16 v29, 0x2b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2639"

    const/16 v29, 0x2c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude23"

    const/16 v29, 0x2d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude16"

    const/16 v29, 0x2e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude2b"

    const/16 v29, 0x2f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude29"

    aput-object v28, v4, v16

    const-string/jumbo v28, "\ud83e\udd7a"

    aput-object v28, v4, v17

    const-string/jumbo v28, "\ud83d\ude22"

    aput-object v28, v4, v18

    const-string/jumbo v28, "\ud83d\ude2d"

    aput-object v28, v4, v19

    const-string/jumbo v28, "\ud83d\ude24"

    aput-object v28, v4, v20

    const-string/jumbo v28, "\ud83d\ude20"

    aput-object v28, v4, v21

    const-string/jumbo v28, "\ud83d\ude21"

    aput-object v28, v4, v22

    const-string/jumbo v28, "\ud83e\udd2c"

    aput-object v28, v4, v23

    const-string/jumbo v28, "\ud83e\udd2f"

    aput-object v28, v4, v24

    const-string/jumbo v28, "\ud83d\ude33"

    aput-object v28, v4, v25

    const-string/jumbo v28, "\ud83e\udd75"

    const/16 v29, 0x3a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd76"

    const/16 v29, 0x3b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude36\u200d\ud83c\udf2b"

    const/16 v29, 0x3c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude31"

    const/16 v29, 0x3d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude28"

    const/16 v29, 0x3e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude30"

    const/16 v29, 0x3f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude25"

    const/16 v29, 0x40

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude13"

    const/16 v29, 0x41

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd17"

    const/16 v29, 0x42

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd14"

    const/16 v29, 0x43

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee3"

    const/16 v29, 0x44

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd2d"

    const/16 v29, 0x45

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee2"

    const/16 v29, 0x46

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee1"

    const/16 v29, 0x47

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd2b"

    const/16 v29, 0x48

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee0"

    const/16 v29, 0x49

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd25"

    const/16 v29, 0x4a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude36"

    const/16 v29, 0x4b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee5"

    const/16 v29, 0x4c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude10"

    const/16 v29, 0x4d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee4"

    const/16 v29, 0x4e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude11"

    const/16 v29, 0x4f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee8"

    const/16 v29, 0x50

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude2c"

    const/16 v29, 0x51

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude44"

    const/16 v29, 0x52

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude2f"

    const/16 v29, 0x53

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude26"

    const/16 v29, 0x54

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude27"

    const/16 v29, 0x55

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude2e"

    const/16 v29, 0x56

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude32"

    const/16 v29, 0x57

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd71"

    const/16 v29, 0x58

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee9"

    const/16 v29, 0x59

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude34"

    const/16 v29, 0x5a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd24"

    const/16 v29, 0x5b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude2a"

    const/16 v29, 0x5c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude2e\u200d\ud83d\udca8"

    const/16 v29, 0x5d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude35"

    const/16 v29, 0x5e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude35\u200d\ud83d\udcab"

    const/16 v29, 0x5f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd10"

    const/16 v29, 0x60

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd74"

    const/16 v29, 0x61

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd22"

    const/16 v29, 0x62

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd2e"

    const/16 v29, 0x63

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd27"

    const/16 v29, 0x64

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude37"

    const/16 v29, 0x65

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd12"

    const/16 v29, 0x66

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd15"

    const/16 v29, 0x67

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd11"

    const/16 v29, 0x68

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd20"

    const/16 v29, 0x69

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude08"

    const/16 v29, 0x6a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc7f"

    const/16 v29, 0x6b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc79"

    const/16 v29, 0x6c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc7a"

    const/16 v29, 0x6d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd21"

    const/16 v29, 0x6e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udca9"

    const/16 v29, 0x6f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc7b"

    const/16 v29, 0x70

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc80"

    const/16 v29, 0x71

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2620"

    const/16 v29, 0x72

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc7d"

    aput-object v28, v4, v26

    const-string/jumbo v28, "\ud83d\udc7e"

    const/16 v29, 0x74

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd16"

    const/16 v29, 0x75

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf83"

    const/16 v29, 0x76

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude3a"

    const/16 v29, 0x77

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude38"

    const/16 v29, 0x78

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude39"

    const/16 v29, 0x79

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude3b"

    const/16 v29, 0x7a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude3c"

    const/16 v29, 0x7b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude3d"

    const/16 v29, 0x7c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude40"

    const/16 v29, 0x7d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude3f"

    const/16 v29, 0x7e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude3e"

    const/16 v29, 0x7f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef6"

    const/16 v29, 0x80

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd32"

    const/16 v29, 0x81

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc50"

    const/16 v29, 0x82

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4c"

    const/16 v29, 0x83

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc4f"

    const/16 v29, 0x84

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd1d"

    const/16 v29, 0x85

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc4d"

    const/16 v29, 0x86

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc4e"

    const/16 v29, 0x87

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc4a"

    const/16 v29, 0x88

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u270a"

    const/16 v29, 0x89

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd1b"

    const/16 v29, 0x8a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd1c"

    const/16 v29, 0x8b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef7"

    const/16 v29, 0x8c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef8"

    const/16 v29, 0x8d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd1e"

    const/16 v29, 0x8e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u270c"

    const/16 v29, 0x8f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef0"

    const/16 v29, 0x90

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd1f"

    const/16 v29, 0x91

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd18"

    const/16 v29, 0x92

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc4c"

    const/16 v29, 0x93

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd0c"

    const/16 v29, 0x94

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd0f"

    const/16 v29, 0x95

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef3"

    const/16 v29, 0x96

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef4"

    const/16 v29, 0x97

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc48"

    const/16 v29, 0x98

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc49"

    const/16 v29, 0x99

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc46"

    const/16 v29, 0x9a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc47"

    const/16 v29, 0x9b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u261d"

    const/16 v29, 0x9c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u270b"

    const/16 v29, 0x9d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd1a"

    const/16 v29, 0x9e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd90"

    const/16 v29, 0x9f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd96"

    const/16 v29, 0xa0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc4b"

    const/16 v29, 0xa1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd19"

    const/16 v29, 0xa2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef2"

    const/16 v29, 0xa3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef1"

    const/16 v29, 0xa4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcaa"

    const/16 v29, 0xa5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddbe"

    const/16 v29, 0xa6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd95"

    const/16 v29, 0xa7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u270d"

    const/16 v29, 0xa8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4f"

    const/16 v29, 0xa9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udef5"

    const/16 v29, 0xaa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb6"

    const/16 v29, 0xab

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb5"

    const/16 v29, 0xac

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddbf"

    const/16 v29, 0xad

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc84"

    const/16 v29, 0xae

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc8b"

    const/16 v29, 0xaf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc44"

    const/16 v29, 0xb0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udee6"

    const/16 v29, 0xb1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb7"

    const/16 v29, 0xb2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc45"

    const/16 v29, 0xb3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc42"

    const/16 v29, 0xb4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddbb"

    const/16 v29, 0xb5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc43"

    const/16 v29, 0xb6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec6"

    const/16 v29, 0xb7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc63"

    const/16 v29, 0xb8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc41"

    const/16 v29, 0xb9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc40"

    const/16 v29, 0xba

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec0"

    const/16 v29, 0xbb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec1"

    const/16 v29, 0xbc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde0"

    const/16 v29, 0xbd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udde3"

    const/16 v29, 0xbe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc64"

    const/16 v29, 0xbf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc65"

    const/16 v29, 0xc0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec2"

    const/16 v29, 0xc1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc76"

    const/16 v29, 0xc2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc67"

    const/16 v29, 0xc3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd2"

    const/16 v29, 0xc4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc66"

    const/16 v29, 0xc5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69"

    const/16 v29, 0xc6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1"

    const/16 v29, 0xc7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68"

    const/16 v29, 0xc8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddb1"

    const/16 v29, 0xc9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddb1"

    const/16 v29, 0xca

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddb1"

    const/16 v29, 0xcb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddb0"

    const/16 v29, 0xcc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddb0"

    const/16 v29, 0xcd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddb0"

    const/16 v29, 0xce

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc71\u200d\u2640"

    const/16 v29, 0xcf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc71"

    const/16 v29, 0xd0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc71\u200d\u2642"

    const/16 v29, 0xd1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddb3"

    const/16 v29, 0xd2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddb3"

    const/16 v29, 0xd3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddb3"

    const/16 v29, 0xd4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddb2"

    const/16 v29, 0xd5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddb2"

    const/16 v29, 0xd6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddb2"

    const/16 v29, 0xd7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd4\u200d\u2640"

    const/16 v29, 0xd8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd4"

    const/16 v29, 0xd9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd4\u200d\u2642"

    const/16 v29, 0xda

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc75"

    const/16 v29, 0xdb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd3"

    const/16 v29, 0xdc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc74"

    const/16 v29, 0xdd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc72"

    const/16 v29, 0xde

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc73\u200d\u2640"

    const/16 v29, 0xdf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc73"

    const/16 v29, 0xe0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc73\u200d\u2642"

    const/16 v29, 0xe1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd5"

    const/16 v29, 0xe2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6e\u200d\u2640"

    const/16 v29, 0xe3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6e"

    const/16 v29, 0xe4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6e\u200d\u2642"

    const/16 v29, 0xe5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc77\u200d\u2640"

    const/16 v29, 0xe6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc77"

    const/16 v29, 0xe7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc77\u200d\u2642"

    const/16 v29, 0xe8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc82\u200d\u2640"

    const/16 v29, 0xe9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc82"

    const/16 v29, 0xea

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc82\u200d\u2642"

    const/16 v29, 0xeb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd75\u200d\u2640"

    const/16 v29, 0xec

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd75"

    const/16 v29, 0xed

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd75\u200d\u2642"

    const/16 v29, 0xee

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2695"

    const/16 v29, 0xef

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\u2695"

    const/16 v29, 0xf0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\u2695"

    const/16 v29, 0xf1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udf3e"

    const/16 v29, 0xf2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udf3e"

    const/16 v29, 0xf3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udf3e"

    const/16 v29, 0xf4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udf73"

    const/16 v29, 0xf5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udf73"

    const/16 v29, 0xf6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udf73"

    const/16 v29, 0xf7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udf93"

    const/16 v29, 0xf8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udf93"

    const/16 v29, 0xf9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udf93"

    const/16 v29, 0xfa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udfa4"

    const/16 v29, 0xfb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udfa4"

    const/16 v29, 0xfc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udfa4"

    const/16 v29, 0xfd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udfeb"

    const/16 v29, 0xfe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udfeb"

    const/16 v29, 0xff

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udfeb"

    const/16 v29, 0x100

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udfed"

    const/16 v29, 0x101

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udfed"

    const/16 v29, 0x102

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udfed"

    const/16 v29, 0x103

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\udcbb"

    const/16 v29, 0x104

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83d\udcbb"

    const/16 v29, 0x105

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\udcbb"

    const/16 v29, 0x106

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\udcbc"

    const/16 v29, 0x107

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83d\udcbc"

    const/16 v29, 0x108

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\udcbc"

    const/16 v29, 0x109

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\udd27"

    const/16 v29, 0x10a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83d\udd27"

    const/16 v29, 0x10b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\udd27"

    const/16 v29, 0x10c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\udd2c"

    const/16 v29, 0x10d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83d\udd2c"

    const/16 v29, 0x10e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\udd2c"

    const/16 v29, 0x10f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udfa8"

    const/16 v29, 0x110

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udfa8"

    const/16 v29, 0x111

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udfa8"

    const/16 v29, 0x112

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\ude92"

    const/16 v29, 0x113

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83d\ude92"

    const/16 v29, 0x114

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\ude92"

    const/16 v29, 0x115

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2708"

    const/16 v29, 0x116

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\u2708"

    const/16 v29, 0x117

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\u2708"

    const/16 v29, 0x118

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\ude80"

    const/16 v29, 0x119

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83d\ude80"

    const/16 v29, 0x11a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\ude80"

    const/16 v29, 0x11b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2696"

    const/16 v29, 0x11c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\u2696"

    const/16 v29, 0x11d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\u2696"

    const/16 v29, 0x11e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc70\u200d\u2640"

    const/16 v29, 0x11f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc70"

    const/16 v29, 0x120

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc70\u200d\u2642"

    const/16 v29, 0x121

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd35\u200d\u2640"

    const/16 v29, 0x122

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd35"

    const/16 v29, 0x123

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd35\u200d\u2642"

    const/16 v29, 0x124

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc78"

    const/16 v29, 0x125

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec5"

    const/16 v29, 0x126

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd34"

    const/16 v29, 0x127

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd77"

    const/16 v29, 0x128

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb8\u200d\u2640"

    const/16 v29, 0x129

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb8"

    const/16 v29, 0x12a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb8\u200d\u2642"

    const/16 v29, 0x12b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb9\u200d\u2640"

    const/16 v29, 0x12c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb9"

    const/16 v29, 0x12d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddb9\u200d\u2642"

    const/16 v29, 0x12e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd36"

    const/16 v29, 0x12f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udf84"

    const/16 v29, 0x130

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf85"

    const/16 v29, 0x131

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd9\u200d\u2640"

    const/16 v29, 0x132

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd9"

    const/16 v29, 0x133

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd9\u200d\u2642"

    const/16 v29, 0x134

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddd\u200d\u2640"

    const/16 v29, 0x135

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddd"

    const/16 v29, 0x136

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddd\u200d\u2642"

    const/16 v29, 0x137

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcc"

    const/16 v29, 0x138

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddb\u200d\u2640"

    const/16 v29, 0x139

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddb"

    const/16 v29, 0x13a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddb\u200d\u2642"

    const/16 v29, 0x13b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddf\u200d\u2640"

    const/16 v29, 0x13c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddf"

    const/16 v29, 0x13d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddf\u200d\u2642"

    const/16 v29, 0x13e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddde\u200d\u2640"

    const/16 v29, 0x13f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddde"

    const/16 v29, 0x140

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddde\u200d\u2642"

    const/16 v29, 0x141

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddc\u200d\u2640"

    const/16 v29, 0x142

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddc"

    const/16 v29, 0x143

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udddc\u200d\u2642"

    const/16 v29, 0x144

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddda\u200d\u2640"

    const/16 v29, 0x145

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddda"

    const/16 v29, 0x146

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddda\u200d\u2642"

    const/16 v29, 0x147

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc7c"

    const/16 v29, 0x148

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd30"

    const/16 v29, 0x149

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec4"

    const/16 v29, 0x14a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udec3"

    const/16 v29, 0x14b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd31"

    const/16 v29, 0x14c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83c\udf7c"

    const/16 v29, 0x14d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83c\udf7c"

    const/16 v29, 0x14e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83c\udf7c"

    const/16 v29, 0x14f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude47\u200d\u2640"

    const/16 v29, 0x150

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude47"

    const/16 v29, 0x151

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude47\u200d\u2642"

    const/16 v29, 0x152

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc81\u200d\u2640"

    const/16 v29, 0x153

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc81"

    const/16 v29, 0x154

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc81\u200d\u2642"

    const/16 v29, 0x155

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude45\u200d\u2640"

    const/16 v29, 0x156

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude45"

    const/16 v29, 0x157

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude45\u200d\u2642"

    const/16 v29, 0x158

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude46\u200d\u2640"

    const/16 v29, 0x159

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude46"

    const/16 v29, 0x15a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude46\u200d\u2642"

    const/16 v29, 0x15b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4b\u200d\u2640"

    const/16 v29, 0x15c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4b"

    const/16 v29, 0x15d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4b\u200d\u2642"

    const/16 v29, 0x15e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcf\u200d\u2640"

    const/16 v29, 0x15f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcf"

    const/16 v29, 0x160

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcf\u200d\u2642"

    const/16 v29, 0x161

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd26\u200d\u2640"

    const/16 v29, 0x162

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd26"

    const/16 v29, 0x163

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd26\u200d\u2642"

    const/16 v29, 0x164

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd37\u200d\u2640"

    const/16 v29, 0x165

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd37"

    const/16 v29, 0x166

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd37\u200d\u2642"

    const/16 v29, 0x167

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4e\u200d\u2640"

    const/16 v29, 0x168

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4e"

    const/16 v29, 0x169

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4e\u200d\u2642"

    const/16 v29, 0x16a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4d\u200d\u2640"

    const/16 v29, 0x16b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4d"

    const/16 v29, 0x16c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\ude4d\u200d\u2642"

    const/16 v29, 0x16d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc87\u200d\u2640"

    const/16 v29, 0x16e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc87"

    const/16 v29, 0x16f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc87\u200d\u2642"

    const/16 v29, 0x170

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc86\u200d\u2640"

    const/16 v29, 0x171

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc86"

    const/16 v29, 0x172

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc86\u200d\u2642"

    const/16 v29, 0x173

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd6\u200d\u2640"

    const/16 v29, 0x174

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd6"

    const/16 v29, 0x175

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd6\u200d\u2642"

    const/16 v29, 0x176

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc85"

    const/16 v29, 0x177

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd33"

    const/16 v29, 0x178

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc83"

    const/16 v29, 0x179

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd7a"

    const/16 v29, 0x17a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6f\u200d\u2640"

    const/16 v29, 0x17b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6f"

    const/16 v29, 0x17c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6f\u200d\u2642"

    const/16 v29, 0x17d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd74"

    const/16 v29, 0x17e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddbd"

    const/16 v29, 0x17f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddbd"

    const/16 v29, 0x180

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddbd"

    const/16 v29, 0x181

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddbd\u200d\u27a1"

    const/16 v29, 0x182

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddbd\u200d\u27a1"

    const/16 v29, 0x183

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddbd\u200d\u27a1"

    const/16 v29, 0x184

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddbc"

    const/16 v29, 0x185

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddbc"

    const/16 v29, 0x186

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddbc"

    const/16 v29, 0x187

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddbc\u200d\u27a1"

    const/16 v29, 0x188

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddbc\u200d\u27a1"

    const/16 v29, 0x189

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddbc\u200d\u27a1"

    const/16 v29, 0x18a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb6\u200d\u2640"

    const/16 v29, 0x18b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb6"

    const/16 v29, 0x18c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb6\u200d\u2642"

    const/16 v29, 0x18d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb6\u200d\u2640\u200d\u27a1"

    const/16 v29, 0x18e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb6\u200d\u27a1"

    const/16 v29, 0x18f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb6\u200d\u2642\u200d\u27a1"

    const/16 v29, 0x190

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddaf"

    const/16 v29, 0x191

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddaf"

    const/16 v29, 0x192

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddaf"

    const/16 v29, 0x193

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83e\uddaf\u200d\u27a1"

    const/16 v29, 0x194

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddd1\u200d\ud83e\uddaf\u200d\u27a1"

    const/16 v29, 0x195

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83e\uddaf\u200d\u27a1"

    const/16 v29, 0x196

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddce\u200d\u2640"

    const/16 v29, 0x197

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddce"

    const/16 v29, 0x198

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddce\u200d\u2642"

    const/16 v29, 0x199

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfc3\u200d\u2640"

    const/16 v29, 0x19a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfc3"

    const/16 v29, 0x19b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfc3\u200d\u2642"

    const/16 v29, 0x19c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfc3\u200d\u2640\u200d\u27a1"

    const/16 v29, 0x19d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfc3\u200d\u27a1"

    const/16 v29, 0x19e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfc3\u200d\u2642\u200d\u27a1"

    const/16 v29, 0x19f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddce\u200d\u2640\u200d\u27a1"

    const/16 v29, 0x1a0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddce\u200d\u27a1"

    const/16 v29, 0x1a1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddce\u200d\u2642\u200d\u27a1"

    const/16 v29, 0x1a2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcd\u200d\u2640"

    const/16 v29, 0x1a3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcd"

    const/16 v29, 0x1a4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddcd\u200d\u2642"

    const/16 v29, 0x1a5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6b"

    const/16 v29, 0x1a6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6d"

    const/16 v29, 0x1a7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc6c"

    const/16 v29, 0x1a8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc68"

    const/16 v29, 0x1a9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    const/16 v29, 0x1aa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc91"

    const/16 v29, 0x1ab

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc68"

    const/16 v29, 0x1ac

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    const/16 v29, 0x1ad

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69"

    const/16 v29, 0x1ae

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc8f"

    const/16 v29, 0x1af

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    const/16 v29, 0x1b0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea2"

    const/16 v29, 0x1b1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf6"

    const/16 v29, 0x1b2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf5"

    const/16 v29, 0x1b3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea1"

    const/16 v29, 0x1b4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde5"

    const/16 v29, 0x1b5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd7c"

    const/16 v29, 0x1b6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddba"

    const/16 v29, 0x1b7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc5a"

    const/16 v29, 0x1b8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc55"

    const/16 v29, 0x1b9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc56"

    const/16 v29, 0x1ba

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude72"

    const/16 v29, 0x1bb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude73"

    const/16 v29, 0x1bc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc54"

    const/16 v29, 0x1bd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc57"

    const/16 v29, 0x1be

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc59"

    const/16 v29, 0x1bf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude71"

    const/16 v29, 0x1c0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc58"

    const/16 v29, 0x1c1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd7b"

    const/16 v29, 0x1c2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude74"

    const/16 v29, 0x1c3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd7f"

    const/16 v29, 0x1c4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc60"

    const/16 v29, 0x1c5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc61"

    const/16 v29, 0x1c6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc62"

    const/16 v29, 0x1c7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc5e"

    const/16 v29, 0x1c8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc5f"

    const/16 v29, 0x1c9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd7e"

    const/16 v29, 0x1ca

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde6"

    const/16 v29, 0x1cb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde4"

    const/16 v29, 0x1cc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde3"

    const/16 v29, 0x1cd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfa9"

    const/16 v29, 0x1ce

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde2"

    const/16 v29, 0x1cf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc52"

    const/16 v29, 0x1d0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf93"

    const/16 v29, 0x1d1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26d1"

    const/16 v29, 0x1d2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude96"

    const/16 v29, 0x1d3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc51"

    const/16 v29, 0x1d4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc8d"

    const/16 v29, 0x1d5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc5d"

    const/16 v29, 0x1d6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc5b"

    const/16 v29, 0x1d7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc5c"

    const/16 v29, 0x1d8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcbc"

    const/16 v29, 0x1d9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf92"

    const/16 v29, 0x1da

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf3"

    const/16 v29, 0x1db

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc53"

    const/16 v29, 0x1dc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd76"

    const/16 v29, 0x1dd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd7d"

    const/16 v29, 0x1de

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf02"

    const/16 v29, 0x1df

    aput-object v28, v4, v29

    aput-object v4, v0, v27

    const/4 v4, 0x0

    aput-object v4, v0, v6

    aput-object v4, v0, v5

    const-string/jumbo v148, "\ud83c\udfb0"

    const-string/jumbo v149, "\ud83e\udde9"

    const-string/jumbo v28, "\u26bd"

    const-string/jumbo v29, "\ud83c\udfc0"

    const-string/jumbo v30, "\ud83c\udfc8"

    const-string/jumbo v31, "\u26be"

    const-string/jumbo v32, "\ud83e\udd4e"

    const-string/jumbo v33, "\ud83c\udfbe"

    const-string/jumbo v34, "\ud83c\udfd0"

    const-string/jumbo v35, "\ud83c\udfc9"

    const-string/jumbo v36, "\ud83e\udd4f"

    const-string/jumbo v37, "\ud83c\udfb1"

    const-string/jumbo v38, "\ud83e\ude80"

    const-string/jumbo v39, "\ud83c\udfd3"

    const-string/jumbo v40, "\ud83c\udff8"

    const-string/jumbo v41, "\ud83c\udfd2"

    const-string/jumbo v42, "\ud83c\udfd1"

    const-string/jumbo v43, "\ud83e\udd4d"

    const-string/jumbo v44, "\ud83c\udfcf"

    const-string/jumbo v45, "\ud83e\ude83"

    const-string/jumbo v46, "\ud83e\udd45"

    const-string/jumbo v47, "\u26f3"

    const-string/jumbo v48, "\ud83e\ude81"

    const-string/jumbo v49, "\ud83d\udedd"

    const-string/jumbo v50, "\ud83c\udff9"

    const-string/jumbo v51, "\ud83c\udfa3"

    const-string/jumbo v52, "\ud83e\udd3f"

    const-string/jumbo v53, "\ud83e\udd4a"

    const-string/jumbo v54, "\ud83e\udd4b"

    const-string/jumbo v55, "\ud83c\udfbd"

    const-string/jumbo v56, "\ud83d\udef9"

    const-string/jumbo v57, "\ud83d\udefc"

    const-string/jumbo v58, "\ud83d\udef7"

    const-string/jumbo v59, "\u26f8"

    const-string/jumbo v60, "\ud83e\udd4c"

    const-string/jumbo v61, "\ud83c\udfbf"

    const-string/jumbo v62, "\u26f7"

    const-string/jumbo v63, "\ud83c\udfc2"

    const-string/jumbo v64, "\ud83e\ude82"

    const-string/jumbo v65, "\ud83c\udfcb\u200d\u2640"

    const-string/jumbo v66, "\ud83c\udfcb"

    const-string/jumbo v67, "\ud83c\udfcb\u200d\u2642"

    const-string/jumbo v68, "\ud83e\udd3c\u200d\u2640"

    const-string/jumbo v69, "\ud83e\udd3c"

    const-string/jumbo v70, "\ud83e\udd3c\u200d\u2642"

    const-string/jumbo v71, "\ud83e\udd38\u200d\u2640"

    const-string/jumbo v72, "\ud83e\udd38"

    const-string/jumbo v73, "\ud83e\udd38\u200d\u2642"

    const-string/jumbo v74, "\u26f9\u200d\u2640"

    const-string/jumbo v75, "\u26f9"

    const-string/jumbo v76, "\u26f9\u200d\u2642"

    const-string/jumbo v77, "\ud83e\udd3a"

    const-string/jumbo v78, "\ud83e\udd3e\u200d\u2640"

    const-string/jumbo v79, "\ud83e\udd3e"

    const-string/jumbo v80, "\ud83e\udd3e\u200d\u2642"

    const-string/jumbo v81, "\ud83c\udfcc\u200d\u2640"

    const-string/jumbo v82, "\ud83c\udfcc"

    const-string/jumbo v83, "\ud83c\udfcc\u200d\u2642"

    const-string/jumbo v84, "\ud83c\udfc7"

    const-string/jumbo v85, "\ud83e\uddd8\u200d\u2640"

    const-string/jumbo v86, "\ud83e\uddd8"

    const-string/jumbo v87, "\ud83e\uddd8\u200d\u2642"

    const-string/jumbo v88, "\ud83c\udfc4\u200d\u2640"

    const-string/jumbo v89, "\ud83c\udfc4"

    const-string/jumbo v90, "\ud83c\udfc4\u200d\u2642"

    const-string/jumbo v91, "\ud83c\udfca\u200d\u2640"

    const-string/jumbo v92, "\ud83c\udfca"

    const-string/jumbo v93, "\ud83c\udfca\u200d\u2642"

    const-string/jumbo v94, "\ud83e\udd3d\u200d\u2640"

    const-string/jumbo v95, "\ud83e\udd3d"

    const-string/jumbo v96, "\ud83e\udd3d\u200d\u2642"

    const-string/jumbo v97, "\ud83d\udea3\u200d\u2640"

    const-string/jumbo v98, "\ud83d\udea3"

    const-string/jumbo v99, "\ud83d\udea3\u200d\u2642"

    const-string/jumbo v100, "\ud83e\uddd7\u200d\u2640"

    const-string/jumbo v101, "\ud83e\uddd7"

    const-string/jumbo v102, "\ud83e\uddd7\u200d\u2642"

    const-string/jumbo v103, "\ud83d\udeb5\u200d\u2640"

    const-string/jumbo v104, "\ud83d\udeb5"

    const-string/jumbo v105, "\ud83d\udeb5\u200d\u2642"

    const-string/jumbo v106, "\ud83d\udeb4\u200d\u2640"

    const-string/jumbo v107, "\ud83d\udeb4"

    const-string/jumbo v108, "\ud83d\udeb4\u200d\u2642"

    const-string/jumbo v109, "\ud83c\udfc6"

    const-string/jumbo v110, "\ud83e\udd47"

    const-string/jumbo v111, "\ud83e\udd48"

    const-string/jumbo v112, "\ud83e\udd49"

    const-string/jumbo v113, "\ud83c\udfc5"

    const-string/jumbo v114, "\ud83c\udf96"

    const-string/jumbo v115, "\ud83c\udff5"

    const-string/jumbo v116, "\ud83c\udf97"

    const-string/jumbo v117, "\ud83c\udfab"

    const-string/jumbo v118, "\ud83c\udf9f"

    const-string/jumbo v119, "\ud83c\udfaa"

    const-string/jumbo v120, "\ud83e\udd39\u200d\u2640"

    const-string/jumbo v121, "\ud83e\udd39"

    const-string/jumbo v122, "\ud83e\udd39\u200d\u2642"

    const-string/jumbo v123, "\ud83c\udfad"

    const-string/jumbo v124, "\ud83e\ude70"

    const-string/jumbo v125, "\ud83c\udfa8"

    const-string/jumbo v126, "\ud83e\udedf"

    const-string/jumbo v127, "\ud83c\udfac"

    const-string/jumbo v128, "\ud83c\udfa4"

    const-string/jumbo v129, "\ud83c\udfa7"

    const-string/jumbo v130, "\ud83c\udfbc"

    const-string/jumbo v131, "\ud83c\udfb9"

    const-string/jumbo v132, "\ud83e\ude87"

    const-string/jumbo v133, "\ud83e\udd41"

    const-string/jumbo v134, "\ud83e\ude98"

    const-string/jumbo v135, "\ud83c\udfb7"

    const-string/jumbo v136, "\ud83c\udfba"

    const-string/jumbo v137, "\ud83e\ude97"

    const-string/jumbo v138, "\ud83c\udfb8"

    const-string/jumbo v139, "\ud83e\ude95"

    const-string/jumbo v140, "\ud83e\ude89"

    const-string/jumbo v141, "\ud83c\udfbb"

    const-string/jumbo v142, "\ud83e\ude88"

    const-string/jumbo v143, "\ud83c\udfb2"

    const-string/jumbo v144, "\u265f"

    const-string/jumbo v145, "\ud83c\udfaf"

    const-string/jumbo v146, "\ud83c\udfb3"

    const-string/jumbo v147, "\ud83c\udfae"

    filled-new-array/range {v28 .. v149}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const/4 v4, 0x0

    aput-object v4, v0, v8

    const/16 v4, 0xe2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v28, "\u231a"

    aput-object v28, v4, v27

    const-string/jumbo v28, "\ud83d\udcf1"

    aput-object v28, v4, v6

    const-string/jumbo v28, "\ud83d\udcf2"

    aput-object v28, v4, v5

    const-string/jumbo v28, "\ud83d\udcbb"

    aput-object v28, v4, v7

    const-string/jumbo v28, "\u2328"

    aput-object v28, v4, v8

    const-string/jumbo v28, "\ud83d\udda5"

    aput-object v28, v4, v9

    const-string/jumbo v28, "\ud83d\udda8"

    aput-object v28, v4, v10

    const-string/jumbo v28, "\ud83d\uddb1"

    aput-object v28, v4, v11

    const-string/jumbo v28, "\ud83d\uddb2"

    aput-object v28, v4, v12

    const-string/jumbo v28, "\ud83d\udd79"

    const/16 v29, 0x9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udddc"

    const/16 v29, 0xa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcbd"

    const/16 v29, 0xb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcbe"

    const/16 v29, 0xc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcbf"

    const/16 v29, 0xd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc0"

    const/16 v29, 0xe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcfc"

    const/16 v29, 0xf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcf7"

    const/16 v29, 0x10

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcf8"

    const/16 v29, 0x11

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcf9"

    const/16 v29, 0x12

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfa5"

    const/16 v29, 0x13

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcfd"

    const/16 v29, 0x14

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf9e"

    const/16 v29, 0x15

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcde"

    const/16 v29, 0x16

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u260e"

    const/16 v29, 0x17

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcdf"

    const/16 v29, 0x18

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce0"

    const/16 v29, 0x19

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcfa"

    const/16 v29, 0x1a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcfb"

    const/16 v29, 0x1b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf99"

    const/16 v29, 0x1c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf9a"

    const/16 v29, 0x1d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf9b"

    const/16 v29, 0x1e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udded"

    const/16 v29, 0x1f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23f1"

    const/16 v29, 0x20

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23f2"

    const/16 v29, 0x21

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23f0"

    const/16 v29, 0x22

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd70"

    aput-object v28, v4, v14

    const-string/jumbo v28, "\u231b"

    const/16 v29, 0x24

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23f3"

    const/16 v29, 0x25

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce1"

    const/16 v29, 0x26

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd0b"

    const/16 v29, 0x27

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udeab"

    const/16 v29, 0x28

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd0c"

    const/16 v29, 0x29

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udca1"

    aput-object v28, v4, v15

    const-string/jumbo v28, "\ud83d\udd26"

    const/16 v29, 0x2b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd6f"

    const/16 v29, 0x2c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude94"

    const/16 v29, 0x2d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddef"

    const/16 v29, 0x2e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udee2"

    const/16 v29, 0x2f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcb8"

    aput-object v28, v4, v16

    const-string/jumbo v28, "\ud83d\udcb5"

    aput-object v28, v4, v17

    const-string/jumbo v28, "\ud83d\udcb4"

    aput-object v28, v4, v18

    const-string/jumbo v28, "\ud83d\udcb6"

    aput-object v28, v4, v19

    const-string/jumbo v28, "\ud83d\udcb7"

    aput-object v28, v4, v20

    const-string/jumbo v28, "\ud83e\ude99"

    aput-object v28, v4, v21

    const-string/jumbo v28, "\ud83d\udcb0"

    aput-object v28, v4, v22

    const-string/jumbo v28, "\ud83d\udcb3"

    aput-object v28, v4, v23

    const-string/jumbo v28, "\ud83e\udeaa"

    aput-object v28, v4, v24

    const-string/jumbo v28, "\ud83d\udc8e"

    aput-object v28, v4, v25

    const-string/jumbo v28, "\u2696"

    const/16 v29, 0x3a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude9c"

    const/16 v29, 0x3b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf0"

    const/16 v29, 0x3c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude9b"

    const/16 v29, 0x3d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd27"

    const/16 v29, 0x3e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd28"

    const/16 v29, 0x3f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2692"

    const/16 v29, 0x40

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udee0"

    const/16 v29, 0x41

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26cf"

    const/16 v29, 0x42

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude8f"

    const/16 v29, 0x43

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude9a"

    const/16 v29, 0x44

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd29"

    const/16 v29, 0x45

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2699"

    const/16 v29, 0x46

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea4"

    const/16 v29, 0x47

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf1"

    const/16 v29, 0x48

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26d3"

    const/16 v29, 0x49

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26d3\u200d\ud83d\udca5"

    const/16 v29, 0x4a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf2"

    const/16 v29, 0x4b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd2b"

    const/16 v29, 0x4c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udca3"

    const/16 v29, 0x4d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde8"

    const/16 v29, 0x4e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude93"

    const/16 v29, 0x4f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd2a"

    const/16 v29, 0x50

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udde1"

    const/16 v29, 0x51

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2694"

    const/16 v29, 0x52

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udee1"

    const/16 v29, 0x53

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeac"

    const/16 v29, 0x54

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26b0"

    const/16 v29, 0x55

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea6"

    const/16 v29, 0x56

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26b1"

    const/16 v29, 0x57

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udffa"

    const/16 v29, 0x58

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd2e"

    const/16 v29, 0x59

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcff"

    const/16 v29, 0x5a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddff"

    const/16 v29, 0x5b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udeac"

    const/16 v29, 0x5c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc88"

    const/16 v29, 0x5d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2697"

    const/16 v29, 0x5e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd2d"

    const/16 v29, 0x5f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd2c"

    const/16 v29, 0x60

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd73"

    const/16 v29, 0x61

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude7b"

    const/16 v29, 0x62

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude79"

    const/16 v29, 0x63

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude7a"

    const/16 v29, 0x64

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc8a"

    const/16 v29, 0x65

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc89"

    const/16 v29, 0x66

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude78"

    const/16 v29, 0x67

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddec"

    const/16 v29, 0x68

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udda0"

    const/16 v29, 0x69

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddeb"

    const/16 v29, 0x6a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddea"

    const/16 v29, 0x6b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf21"

    const/16 v29, 0x6c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf9"

    const/16 v29, 0x6d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea0"

    const/16 v29, 0x6e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddfa"

    const/16 v29, 0x6f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddfb"

    const/16 v29, 0x70

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udebd"

    const/16 v29, 0x71

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb0"

    const/16 v29, 0x72

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udebf"

    aput-object v28, v4, v26

    const-string/jumbo v28, "\ud83d\udec1"

    const/16 v29, 0x74

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udec0"

    const/16 v29, 0x75

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddfc"

    const/16 v29, 0x76

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea5"

    const/16 v29, 0x77

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude92"

    const/16 v29, 0x78

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udeae"

    const/16 v29, 0x79

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddfd"

    const/16 v29, 0x7a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea3"

    const/16 v29, 0x7b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf4"

    const/16 v29, 0x7c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udece"

    const/16 v29, 0x7d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd11"

    const/16 v29, 0x7e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udddd"

    const/16 v29, 0x7f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeaa"

    const/16 v29, 0x80

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude91"

    const/16 v29, 0x81

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udecb"

    const/16 v29, 0x82

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udecf"

    const/16 v29, 0x83

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udecc"

    const/16 v29, 0x84

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf8"

    const/16 v29, 0x85

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude86"

    const/16 v29, 0x86

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddbc"

    const/16 v29, 0x87

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude9e"

    const/16 v29, 0x88

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude9f"

    const/16 v29, 0x89

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udecd"

    const/16 v29, 0x8a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uded2"

    const/16 v29, 0x8b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf81"

    const/16 v29, 0x8c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf88"

    const/16 v29, 0x8d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf8f"

    const/16 v29, 0x8e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf80"

    const/16 v29, 0x8f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude84"

    const/16 v29, 0x90

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\ude85"

    const/16 v29, 0x91

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf8a"

    const/16 v29, 0x92

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf89"

    const/16 v29, 0x93

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf8e"

    const/16 v29, 0x94

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udead"

    const/16 v29, 0x95

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfee"

    const/16 v29, 0x96

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf90"

    const/16 v29, 0x97

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea9"

    const/16 v29, 0x98

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udde7"

    const/16 v29, 0x99

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2709"

    const/16 v29, 0x9a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce9"

    const/16 v29, 0x9b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce8"

    const/16 v29, 0x9c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce7"

    const/16 v29, 0x9d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc8c"

    const/16 v29, 0x9e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce5"

    const/16 v29, 0x9f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce4"

    const/16 v29, 0xa0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce6"

    const/16 v29, 0xa1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udff7"

    const/16 v29, 0xa2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udea7"

    const/16 v29, 0xa3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcea"

    const/16 v29, 0xa4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udceb"

    const/16 v29, 0xa5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcec"

    const/16 v29, 0xa6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udced"

    const/16 v29, 0xa7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcee"

    const/16 v29, 0xa8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcef"

    const/16 v29, 0xa9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcdc"

    const/16 v29, 0xaa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc3"

    const/16 v29, 0xab

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc4"

    const/16 v29, 0xac

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd1"

    const/16 v29, 0xad

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddfe"

    const/16 v29, 0xae

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcca"

    const/16 v29, 0xaf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc8"

    const/16 v29, 0xb0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc9"

    const/16 v29, 0xb1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddd2"

    const/16 v29, 0xb2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddd3"

    const/16 v29, 0xb3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc6"

    const/16 v29, 0xb4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc5"

    const/16 v29, 0xb5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddd1"

    const/16 v29, 0xb6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc7"

    const/16 v29, 0xb7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddc3"

    const/16 v29, 0xb8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddf3"

    const/16 v29, 0xb9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddc4"

    const/16 v29, 0xba

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udccb"

    const/16 v29, 0xbb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc1"

    const/16 v29, 0xbc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcc2"

    const/16 v29, 0xbd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddc2"

    const/16 v29, 0xbe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddde"

    const/16 v29, 0xbf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcf0"

    const/16 v29, 0xc0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd3"

    const/16 v29, 0xc1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd4"

    const/16 v29, 0xc2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd2"

    const/16 v29, 0xc3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd5"

    const/16 v29, 0xc4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd7"

    const/16 v29, 0xc5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd8"

    const/16 v29, 0xc6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd9"

    const/16 v29, 0xc7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcda"

    const/16 v29, 0xc8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd6"

    const/16 v29, 0xc9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd16"

    const/16 v29, 0xca

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddf7"

    const/16 v29, 0xcb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd17"

    const/16 v29, 0xcc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcce"

    const/16 v29, 0xcd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd87"

    const/16 v29, 0xce

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcd0"

    const/16 v29, 0xcf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udccf"

    const/16 v29, 0xd0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\uddee"

    const/16 v29, 0xd1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udccc"

    const/16 v29, 0xd2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udccd"

    const/16 v29, 0xd3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2702"

    const/16 v29, 0xd4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd8a"

    const/16 v29, 0xd5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd8b"

    const/16 v29, 0xd6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2712"

    const/16 v29, 0xd7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd8c"

    const/16 v29, 0xd8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd8d"

    const/16 v29, 0xd9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcdd"

    const/16 v29, 0xda

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u270f"

    const/16 v29, 0xdb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd0d"

    const/16 v29, 0xdc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd0e"

    const/16 v29, 0xdd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd0f"

    const/16 v29, 0xde

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd10"

    const/16 v29, 0xdf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd12"

    const/16 v29, 0xe0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd13"

    const/16 v29, 0xe1

    aput-object v28, v4, v29

    aput-object v4, v0, v9

    const/16 v4, 0x12e

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v28, "\ud83e\ude77"

    aput-object v28, v4, v27

    const-string/jumbo v28, "\u2764"

    aput-object v28, v4, v6

    const-string/jumbo v28, "\ud83e\udde1"

    aput-object v28, v4, v5

    const-string/jumbo v28, "\ud83d\udc9b"

    aput-object v28, v4, v7

    const-string/jumbo v28, "\ud83d\udc9a"

    aput-object v28, v4, v8

    const-string/jumbo v28, "\ud83e\ude75"

    aput-object v28, v4, v9

    const-string/jumbo v28, "\ud83d\udc99"

    aput-object v28, v4, v10

    const-string/jumbo v28, "\ud83d\udc9c"

    aput-object v28, v4, v11

    const-string/jumbo v28, "\ud83d\udda4"

    aput-object v28, v4, v12

    const-string/jumbo v28, "\ud83e\ude76"

    const/16 v29, 0x9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd0d"

    const/16 v29, 0xa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udd0e"

    const/16 v29, 0xb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc94"

    const/16 v29, 0xc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2764\u200d\ud83d\udd25"

    const/16 v29, 0xd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2764\u200d\ud83e\ude79"

    const/16 v29, 0xe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2763"

    const/16 v29, 0xf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc95"

    const/16 v29, 0x10

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc9e"

    const/16 v29, 0x11

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc93"

    const/16 v29, 0x12

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc97"

    const/16 v29, 0x13

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc96"

    const/16 v29, 0x14

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc98"

    const/16 v29, 0x15

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc9d"

    const/16 v29, 0x16

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc9f"

    const/16 v29, 0x17

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u262e"

    const/16 v29, 0x18

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u271d"

    const/16 v29, 0x19

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u262a"

    const/16 v29, 0x1a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd49"

    const/16 v29, 0x1b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2638"

    const/16 v29, 0x1c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83e\udeaf"

    const/16 v29, 0x1d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2721"

    const/16 v29, 0x1e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd2f"

    const/16 v29, 0x1f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd4e"

    const/16 v29, 0x20

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u262f"

    const/16 v29, 0x21

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2626"

    const/16 v29, 0x22

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uded0"

    aput-object v28, v4, v14

    const-string/jumbo v28, "\u26ce"

    const/16 v29, 0x24

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2648"

    const/16 v29, 0x25

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2649"

    const/16 v29, 0x26

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u264a"

    const/16 v29, 0x27

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u264b"

    const/16 v29, 0x28

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u264c"

    const/16 v29, 0x29

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u264d"

    aput-object v28, v4, v15

    const-string/jumbo v28, "\u264e"

    const/16 v29, 0x2b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u264f"

    const/16 v29, 0x2c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2650"

    const/16 v29, 0x2d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2651"

    const/16 v29, 0x2e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2652"

    const/16 v29, 0x2f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2653"

    aput-object v28, v4, v16

    const-string/jumbo v28, "\ud83c\udd94"

    aput-object v28, v4, v17

    const-string/jumbo v28, "\u269b"

    aput-object v28, v4, v18

    const-string/jumbo v28, "\ud83c\ude51"

    aput-object v28, v4, v19

    const-string/jumbo v28, "\u2622"

    aput-object v28, v4, v20

    const-string/jumbo v28, "\u2623"

    aput-object v28, v4, v21

    const-string/jumbo v28, "\ud83d\udcf4"

    aput-object v28, v4, v22

    const-string/jumbo v28, "\ud83d\udcf3"

    aput-object v28, v4, v23

    const-string/jumbo v28, "\ud83c\ude36"

    aput-object v28, v4, v24

    const-string/jumbo v28, "\ud83c\ude1a"

    aput-object v28, v4, v25

    const-string/jumbo v28, "\ud83c\ude38"

    const/16 v29, 0x3a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude3a"

    const/16 v29, 0x3b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude37"

    const/16 v29, 0x3c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2734"

    const/16 v29, 0x3d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd9a"

    const/16 v29, 0x3e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcae"

    const/16 v29, 0x3f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude50"

    const/16 v29, 0x40

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u3299"

    const/16 v29, 0x41

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u3297"

    const/16 v29, 0x42

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude34"

    const/16 v29, 0x43

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude35"

    const/16 v29, 0x44

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude39"

    const/16 v29, 0x45

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude32"

    const/16 v29, 0x46

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd70"

    const/16 v29, 0x47

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd71"

    const/16 v29, 0x48

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd8e"

    const/16 v29, 0x49

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd91"

    const/16 v29, 0x4a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd7e"

    const/16 v29, 0x4b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd98"

    const/16 v29, 0x4c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u274c"

    const/16 v29, 0x4d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2b55"

    const/16 v29, 0x4e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uded1"

    const/16 v29, 0x4f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26d4"

    const/16 v29, 0x50

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcdb"

    const/16 v29, 0x51

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeab"

    const/16 v29, 0x52

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcaf"

    const/16 v29, 0x53

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udca2"

    const/16 v29, 0x54

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2668"

    const/16 v29, 0x55

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb7"

    const/16 v29, 0x56

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeaf"

    const/16 v29, 0x57

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb3"

    const/16 v29, 0x58

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb1"

    const/16 v29, 0x59

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd1e"

    const/16 v29, 0x5a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcf5"

    const/16 v29, 0x5b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udead"

    const/16 v29, 0x5c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2757"

    const/16 v29, 0x5d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2755"

    const/16 v29, 0x5e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2753"

    const/16 v29, 0x5f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2754"

    const/16 v29, 0x60

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u203c"

    const/16 v29, 0x61

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2049"

    const/16 v29, 0x62

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd05"

    const/16 v29, 0x63

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd06"

    const/16 v29, 0x64

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u303d"

    const/16 v29, 0x65

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26a0"

    const/16 v29, 0x66

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb8"

    const/16 v29, 0x67

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd31"

    const/16 v29, 0x68

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u269c"

    const/16 v29, 0x69

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd30"

    const/16 v29, 0x6a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u267b"

    const/16 v29, 0x6b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2705"

    const/16 v29, 0x6c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude2f"

    const/16 v29, 0x6d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcb9"

    const/16 v29, 0x6e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2747"

    const/16 v29, 0x6f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2733"

    const/16 v29, 0x70

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u274e"

    const/16 v29, 0x71

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf10"

    const/16 v29, 0x72

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udca0"

    aput-object v28, v4, v26

    const-string/jumbo v28, "\u24c2"

    const/16 v29, 0x74

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udf00"

    const/16 v29, 0x75

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udca4"

    const/16 v29, 0x76

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfe7"

    const/16 v29, 0x77

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udebe"

    const/16 v29, 0x78

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u267f"

    const/16 v29, 0x79

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd7f"

    const/16 v29, 0x7a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uded7"

    const/16 v29, 0x7b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude33"

    const/16 v29, 0x7c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude02"

    const/16 v29, 0x7d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udec2"

    const/16 v29, 0x7e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udec3"

    const/16 v29, 0x7f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udec4"

    const/16 v29, 0x80

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udec5"

    const/16 v29, 0x81

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udedc"

    const/16 v29, 0x82

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeb9"

    const/16 v29, 0x83

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeba"

    const/16 v29, 0x84

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udebc"

    const/16 v29, 0x85

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66"

    const/16 v29, 0x86

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v29, 0x87

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\udc66"

    const/16 v29, 0x88

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v29, 0x89

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26a7"

    const/16 v29, 0x8a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udebb"

    const/16 v29, 0x8b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udeae"

    const/16 v29, 0x8c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfa6"

    const/16 v29, 0x8d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcf6"

    const/16 v29, 0x8e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\ude01"

    const/16 v29, 0x8f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd23"

    const/16 v29, 0x90

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2139"

    const/16 v29, 0x91

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd24"

    const/16 v29, 0x92

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd21"

    const/16 v29, 0x93

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd20"

    const/16 v29, 0x94

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd96"

    const/16 v29, 0x95

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd97"

    const/16 v29, 0x96

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd99"

    const/16 v29, 0x97

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd92"

    const/16 v29, 0x98

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd95"

    const/16 v29, 0x99

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udd93"

    const/16 v29, 0x9a

    aput-object v28, v4, v29

    const-string v28, "0\u20e3"

    const/16 v29, 0x9b

    aput-object v28, v4, v29

    const-string v28, "1\u20e3"

    const/16 v29, 0x9c

    aput-object v28, v4, v29

    const-string v28, "2\u20e3"

    const/16 v29, 0x9d

    aput-object v28, v4, v29

    const-string v28, "3\u20e3"

    const/16 v29, 0x9e

    aput-object v28, v4, v29

    const-string v28, "4\u20e3"

    const/16 v29, 0x9f

    aput-object v28, v4, v29

    const-string v28, "5\u20e3"

    const/16 v29, 0xa0

    aput-object v28, v4, v29

    const-string v28, "6\u20e3"

    const/16 v29, 0xa1

    aput-object v28, v4, v29

    const-string v28, "7\u20e3"

    const/16 v29, 0xa2

    aput-object v28, v4, v29

    const-string v28, "8\u20e3"

    const/16 v29, 0xa3

    aput-object v28, v4, v29

    const-string v28, "9\u20e3"

    const/16 v29, 0xa4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd1f"

    const/16 v29, 0xa5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd22"

    const/16 v29, 0xa6

    aput-object v28, v4, v29

    const-string v28, "#\u20e3"

    const/16 v29, 0xa7

    aput-object v28, v4, v29

    const-string v28, "*\u20e3"

    const/16 v29, 0xa8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23cf"

    const/16 v29, 0xa9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25b6"

    const/16 v29, 0xaa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23f8"

    const/16 v29, 0xab

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23ef"

    const/16 v29, 0xac

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23f9"

    const/16 v29, 0xad

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23fa"

    const/16 v29, 0xae

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23ed"

    const/16 v29, 0xaf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23ee"

    const/16 v29, 0xb0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23e9"

    const/16 v29, 0xb1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23ea"

    const/16 v29, 0xb2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23eb"

    const/16 v29, 0xb3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u23ec"

    const/16 v29, 0xb4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25c0"

    const/16 v29, 0xb5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd3c"

    const/16 v29, 0xb6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd3d"

    const/16 v29, 0xb7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u27a1"

    const/16 v29, 0xb8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2b05"

    const/16 v29, 0xb9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2b06"

    const/16 v29, 0xba

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2b07"

    const/16 v29, 0xbb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2197"

    const/16 v29, 0xbc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2198"

    const/16 v29, 0xbd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2199"

    const/16 v29, 0xbe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2196"

    const/16 v29, 0xbf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2195"

    const/16 v29, 0xc0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2194"

    const/16 v29, 0xc1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u21aa"

    const/16 v29, 0xc2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u21a9"

    const/16 v29, 0xc3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2934"

    const/16 v29, 0xc4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2935"

    const/16 v29, 0xc5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd00"

    const/16 v29, 0xc6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd01"

    const/16 v29, 0xc7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd02"

    const/16 v29, 0xc8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd04"

    const/16 v29, 0xc9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd03"

    const/16 v29, 0xca

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfb5"

    const/16 v29, 0xcb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfb6"

    const/16 v29, 0xcc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2795"

    const/16 v29, 0xcd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2796"

    const/16 v29, 0xce

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2797"

    const/16 v29, 0xcf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2716"

    const/16 v29, 0xd0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udff0"

    const/16 v29, 0xd1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u267e"

    const/16 v29, 0xd2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcb2"

    const/16 v29, 0xd3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcb1"

    const/16 v29, 0xd4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2122\ufe0f"

    const/16 v29, 0xd5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u00a9"

    const/16 v29, 0xd6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u00ae"

    const/16 v29, 0xd7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udc41\u200d\ud83d\udde8"

    const/16 v29, 0xd8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd1a"

    const/16 v29, 0xd9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd19"

    const/16 v29, 0xda

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd1b"

    const/16 v29, 0xdb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd1d"

    const/16 v29, 0xdc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd1c"

    const/16 v29, 0xdd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u3030"

    const/16 v29, 0xde

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u27b0"

    const/16 v29, 0xdf

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u27bf"

    const/16 v29, 0xe0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2714"

    const/16 v29, 0xe1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2611"

    const/16 v29, 0xe2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd18"

    const/16 v29, 0xe3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd34"

    const/16 v29, 0xe4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe0"

    const/16 v29, 0xe5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe1"

    const/16 v29, 0xe6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe2"

    const/16 v29, 0xe7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd35"

    const/16 v29, 0xe8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe3"

    const/16 v29, 0xe9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26ab"

    const/16 v29, 0xea

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u26aa"

    const/16 v29, 0xeb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe4"

    const/16 v29, 0xec

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd3a"

    const/16 v29, 0xed

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd3b"

    const/16 v29, 0xee

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd38"

    const/16 v29, 0xef

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd39"

    const/16 v29, 0xf0

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd36"

    const/16 v29, 0xf1

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd37"

    const/16 v29, 0xf2

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd33"

    const/16 v29, 0xf3

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd32"

    const/16 v29, 0xf4

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25aa"

    const/16 v29, 0xf5

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25ab"

    const/16 v29, 0xf6

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25fe"

    const/16 v29, 0xf7

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25fd"

    const/16 v29, 0xf8

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25fc"

    const/16 v29, 0xf9

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u25fb"

    const/16 v29, 0xfa

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe5"

    const/16 v29, 0xfb

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe7"

    const/16 v29, 0xfc

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe8"

    const/16 v29, 0xfd

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe9"

    const/16 v29, 0xfe

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfe6"

    const/16 v29, 0xff

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfea"

    const/16 v29, 0x100

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2b1b"

    const/16 v29, 0x101

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2b1c"

    const/16 v29, 0x102

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udfeb"

    const/16 v29, 0x103

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd08"

    const/16 v29, 0x104

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd07"

    const/16 v29, 0x105

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd09"

    const/16 v29, 0x106

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd0a"

    const/16 v29, 0x107

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd14"

    const/16 v29, 0x108

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd15"

    const/16 v29, 0x109

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce3"

    const/16 v29, 0x10a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udce2"

    const/16 v29, 0x10b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcac"

    const/16 v29, 0x10c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udcad"

    const/16 v29, 0x10d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\uddef"

    const/16 v29, 0x10e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2660"

    const/16 v29, 0x10f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2663"

    const/16 v29, 0x110

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2665"

    const/16 v29, 0x111

    aput-object v28, v4, v29

    const-string/jumbo v28, "\u2666"

    const/16 v29, 0x112

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udccf"

    const/16 v29, 0x113

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udfb4"

    const/16 v29, 0x114

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83c\udc04"

    const/16 v29, 0x115

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd50"

    const/16 v29, 0x116

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd51"

    const/16 v29, 0x117

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd52"

    const/16 v29, 0x118

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd53"

    const/16 v29, 0x119

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd54"

    const/16 v29, 0x11a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd55"

    const/16 v29, 0x11b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd56"

    const/16 v29, 0x11c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd57"

    const/16 v29, 0x11d

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd58"

    const/16 v29, 0x11e

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd59"

    const/16 v29, 0x11f

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd5a"

    const/16 v29, 0x120

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd5b"

    const/16 v29, 0x121

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd5c"

    const/16 v29, 0x122

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd5d"

    const/16 v29, 0x123

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd5e"

    const/16 v29, 0x124

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd5f"

    const/16 v29, 0x125

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd60"

    const/16 v29, 0x126

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd61"

    const/16 v29, 0x127

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd62"

    const/16 v29, 0x128

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd63"

    const/16 v29, 0x129

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd64"

    const/16 v29, 0x12a

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd65"

    const/16 v29, 0x12b

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd66"

    const/16 v29, 0x12c

    aput-object v28, v4, v29

    const-string/jumbo v28, "\ud83d\udd67"

    const/16 v29, 0x12d

    aput-object v28, v4, v29

    aput-object v4, v0, v10

    const/4 v4, 0x0

    aput-object v4, v0, v11

    sput-object v0, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    const/16 v0, 0xfc

    .line 390
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v4, "\ud83d\udc71"

    aput-object v4, v0, v27

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffb"

    aput-object v4, v0, v6

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffc"

    aput-object v4, v0, v5

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffd"

    aput-object v4, v0, v7

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffe"

    aput-object v4, v0, v8

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udfff"

    aput-object v4, v0, v9

    const-string/jumbo v4, "\ud83d\udc73"

    aput-object v4, v0, v10

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffb"

    aput-object v4, v0, v11

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffc"

    aput-object v4, v0, v12

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffd"

    const/16 v28, 0x9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffe"

    const/16 v28, 0xa

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udfff"

    const/16 v28, 0xb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77"

    const/16 v28, 0xc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffb"

    const/16 v28, 0xd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffc"

    const/16 v28, 0xe

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffd"

    const/16 v28, 0xf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffe"

    const/16 v28, 0x10

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udfff"

    const/16 v28, 0x11

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e"

    const/16 v28, 0x12

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffb"

    const/16 v28, 0x13

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffc"

    const/16 v28, 0x14

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffd"

    const/16 v28, 0x15

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffe"

    const/16 v28, 0x16

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udfff"

    const/16 v28, 0x17

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82"

    const/16 v28, 0x18

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffb"

    const/16 v28, 0x19

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffc"

    const/16 v28, 0x1a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffd"

    const/16 v28, 0x1b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffe"

    const/16 v28, 0x1c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udfff"

    const/16 v28, 0x1d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75"

    const/16 v28, 0x1e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffb"

    const/16 v28, 0x1f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffc"

    const/16 v28, 0x20

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffd"

    const/16 v28, 0x21

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffe"

    const/16 v28, 0x22

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udfff"

    aput-object v4, v0, v14

    const-string/jumbo v4, "\ud83d\ude47"

    const/16 v28, 0x24

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffb"

    const/16 v28, 0x25

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffc"

    const/16 v28, 0x26

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffd"

    const/16 v28, 0x27

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffe"

    const/16 v28, 0x28

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udfff"

    const/16 v28, 0x29

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81"

    aput-object v4, v0, v15

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffb"

    const/16 v28, 0x2b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffc"

    const/16 v28, 0x2c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffd"

    const/16 v28, 0x2d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffe"

    const/16 v28, 0x2e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udfff"

    const/16 v28, 0x2f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude45"

    aput-object v4, v0, v16

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffb"

    aput-object v4, v0, v17

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffc"

    aput-object v4, v0, v18

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffd"

    aput-object v4, v0, v19

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffe"

    aput-object v4, v0, v20

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udfff"

    aput-object v4, v0, v21

    const-string/jumbo v4, "\ud83d\ude46"

    aput-object v4, v0, v22

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffb"

    aput-object v4, v0, v23

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffc"

    aput-object v4, v0, v24

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffd"

    aput-object v4, v0, v25

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffe"

    const/16 v28, 0x3a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udfff"

    const/16 v28, 0x3b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b"

    const/16 v28, 0x3c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffb"

    const/16 v28, 0x3d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffc"

    const/16 v28, 0x3e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffd"

    const/16 v28, 0x3f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffe"

    const/16 v28, 0x40

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udfff"

    const/16 v28, 0x41

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e"

    const/16 v28, 0x42

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffb"

    const/16 v28, 0x43

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffc"

    const/16 v28, 0x44

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffd"

    const/16 v28, 0x45

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffe"

    const/16 v28, 0x46

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udfff"

    const/16 v28, 0x47

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d"

    const/16 v28, 0x48

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffb"

    const/16 v28, 0x49

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffc"

    const/16 v28, 0x4a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffd"

    const/16 v28, 0x4b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffe"

    const/16 v28, 0x4c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udfff"

    const/16 v28, 0x4d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87"

    const/16 v28, 0x4e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffb"

    const/16 v28, 0x4f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffc"

    const/16 v28, 0x50

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffd"

    const/16 v28, 0x51

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffe"

    const/16 v28, 0x52

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udfff"

    const/16 v28, 0x53

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86"

    const/16 v28, 0x54

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffb"

    const/16 v28, 0x55

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffc"

    const/16 v28, 0x56

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffd"

    const/16 v28, 0x57

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffe"

    const/16 v28, 0x58

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udfff"

    const/16 v28, 0x59

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3"

    const/16 v28, 0x5a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffb"

    const/16 v28, 0x5b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffc"

    const/16 v28, 0x5c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffd"

    const/16 v28, 0x5d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffe"

    const/16 v28, 0x5e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udfff"

    const/16 v28, 0x5f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb"

    const/16 v28, 0x60

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffb"

    const/16 v28, 0x61

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffc"

    const/16 v28, 0x62

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffd"

    const/16 v28, 0x63

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffe"

    const/16 v28, 0x64

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udfff"

    const/16 v28, 0x65

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9"

    const/16 v28, 0x66

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffb"

    const/16 v28, 0x67

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffc"

    const/16 v28, 0x68

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffd"

    const/16 v28, 0x69

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffe"

    const/16 v28, 0x6a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udfff"

    const/16 v28, 0x6b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc"

    const/16 v28, 0x6c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffb"

    const/16 v28, 0x6d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffc"

    const/16 v28, 0x6e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffd"

    const/16 v28, 0x6f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffe"

    const/16 v28, 0x70

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udfff"

    const/16 v28, 0x71

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4"

    const/16 v28, 0x72

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffb"

    aput-object v4, v0, v26

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffc"

    const/16 v28, 0x74

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffd"

    const/16 v28, 0x75

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffe"

    const/16 v28, 0x76

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udfff"

    const/16 v28, 0x77

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca"

    const/16 v28, 0x78

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffb"

    const/16 v28, 0x79

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffc"

    const/16 v28, 0x7a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffd"

    const/16 v28, 0x7b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffe"

    const/16 v28, 0x7c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udfff"

    const/16 v28, 0x7d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3"

    const/16 v28, 0x7e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffb"

    const/16 v28, 0x7f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffc"

    const/16 v28, 0x80

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffd"

    const/16 v28, 0x81

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffe"

    const/16 v28, 0x82

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udfff"

    const/16 v28, 0x83

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4"

    const/16 v28, 0x84

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffb"

    const/16 v28, 0x85

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffc"

    const/16 v28, 0x86

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffd"

    const/16 v28, 0x87

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffe"

    const/16 v28, 0x88

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udfff"

    const/16 v28, 0x89

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5"

    const/16 v28, 0x8a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffb"

    const/16 v28, 0x8b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffc"

    const/16 v28, 0x8c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffd"

    const/16 v28, 0x8d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffe"

    const/16 v28, 0x8e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udfff"

    const/16 v28, 0x8f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8"

    const/16 v28, 0x90

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffb"

    const/16 v28, 0x91

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffc"

    const/16 v28, 0x92

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffd"

    const/16 v28, 0x93

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffe"

    const/16 v28, 0x94

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udfff"

    const/16 v28, 0x95

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9"

    const/16 v28, 0x96

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffb"

    const/16 v28, 0x97

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffc"

    const/16 v28, 0x98

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffd"

    const/16 v28, 0x99

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffe"

    const/16 v28, 0x9a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udfff"

    const/16 v28, 0x9b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9"

    const/16 v28, 0x9c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffb"

    const/16 v28, 0x9d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffc"

    const/16 v28, 0x9e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffd"

    const/16 v28, 0x9f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffe"

    const/16 v28, 0xa0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udfff"

    const/16 v28, 0xa1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd"

    const/16 v28, 0xa2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffb"

    const/16 v28, 0xa3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffc"

    const/16 v28, 0xa4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffd"

    const/16 v28, 0xa5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffe"

    const/16 v28, 0xa6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udfff"

    const/16 v28, 0xa7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb"

    const/16 v28, 0xa8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffb"

    const/16 v28, 0xa9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffc"

    const/16 v28, 0xaa

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffd"

    const/16 v28, 0xab

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffe"

    const/16 v28, 0xac

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udfff"

    const/16 v28, 0xad

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddf"

    const/16 v28, 0xae

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddde"

    const/16 v28, 0xaf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc"

    const/16 v28, 0xb0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffb"

    const/16 v28, 0xb1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffc"

    const/16 v28, 0xb2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffd"

    const/16 v28, 0xb3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffe"

    const/16 v28, 0xb4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udfff"

    const/16 v28, 0xb5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda"

    const/16 v28, 0xb6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffb"

    const/16 v28, 0xb7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffc"

    const/16 v28, 0xb8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffd"

    const/16 v28, 0xb9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffe"

    const/16 v28, 0xba

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udfff"

    const/16 v28, 0xbb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26"

    const/16 v28, 0xbc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffb"

    const/16 v28, 0xbd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffc"

    const/16 v28, 0xbe

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffd"

    const/16 v28, 0xbf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffe"

    const/16 v28, 0xc0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udfff"

    const/16 v28, 0xc1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37"

    const/16 v28, 0xc2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffb"

    const/16 v28, 0xc3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffc"

    const/16 v28, 0xc4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffd"

    const/16 v28, 0xc5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffe"

    const/16 v28, 0xc6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udfff"

    const/16 v28, 0xc7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6"

    const/16 v28, 0xc8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffb"

    const/16 v28, 0xc9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffc"

    const/16 v28, 0xca

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffd"

    const/16 v28, 0xcb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffe"

    const/16 v28, 0xcc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udfff"

    const/16 v28, 0xcd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6f"

    const/16 v28, 0xce

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6"

    const/16 v28, 0xcf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffb"

    const/16 v28, 0xd0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffc"

    const/16 v28, 0xd1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffd"

    const/16 v28, 0xd2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffe"

    const/16 v28, 0xd3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udfff"

    const/16 v28, 0xd4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3c"

    const/16 v28, 0xd5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38"

    const/16 v28, 0xd6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffb"

    const/16 v28, 0xd7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffc"

    const/16 v28, 0xd8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffd"

    const/16 v28, 0xd9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffe"

    const/16 v28, 0xda

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udfff"

    const/16 v28, 0xdb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e"

    const/16 v28, 0xdc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffb"

    const/16 v28, 0xdd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffc"

    const/16 v28, 0xde

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffd"

    const/16 v28, 0xdf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffe"

    const/16 v28, 0xe0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udfff"

    const/16 v28, 0xe1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8"

    const/16 v28, 0xe2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffb"

    const/16 v28, 0xe3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffc"

    const/16 v28, 0xe4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffd"

    const/16 v28, 0xe5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffe"

    const/16 v28, 0xe6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udfff"

    const/16 v28, 0xe7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d"

    const/16 v28, 0xe8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffb"

    const/16 v28, 0xe9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffc"

    const/16 v28, 0xea

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffd"

    const/16 v28, 0xeb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffe"

    const/16 v28, 0xec

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udfff"

    const/16 v28, 0xed

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7"

    const/16 v28, 0xee

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffb"

    const/16 v28, 0xef

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffc"

    const/16 v28, 0xf0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffd"

    const/16 v28, 0xf1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffe"

    const/16 v28, 0xf2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udfff"

    const/16 v28, 0xf3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39"

    const/16 v28, 0xf4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffb"

    const/16 v28, 0xf5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffc"

    const/16 v28, 0xf6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffd"

    const/16 v28, 0xf7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffe"

    const/16 v28, 0xf8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udfff"

    const/16 v28, 0xf9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc91"

    const/16 v28, 0xfa

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd73"

    const/16 v28, 0xfb

    aput-object v4, v0, v28

    sput-object v0, Lorg/telegram/messenger/EmojiData;->aliasOld:[Ljava/lang/String;

    const/16 v0, 0xfc

    .line 441
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v4, "\ud83d\udc71\u200d\u2642"

    aput-object v4, v0, v27

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffb\u200d\u2642"

    aput-object v4, v0, v6

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffc\u200d\u2642"

    aput-object v4, v0, v5

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffd\u200d\u2642"

    aput-object v4, v0, v7

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffe\u200d\u2642"

    aput-object v4, v0, v8

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udfff\u200d\u2642"

    aput-object v4, v0, v9

    const-string/jumbo v4, "\ud83d\udc73\u200d\u2642"

    aput-object v4, v0, v10

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffb\u200d\u2642"

    aput-object v4, v0, v11

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffc\u200d\u2642"

    aput-object v4, v0, v12

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xa

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\u200d\u2642"

    const/16 v28, 0xc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xe

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x10

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x11

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\u200d\u2642"

    const/16 v28, 0x12

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x13

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x14

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x15

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x16

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x17

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\u200d\u2642"

    const/16 v28, 0x18

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x19

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x1a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x1b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x1c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x1d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\u200d\u2642"

    const/16 v28, 0x1e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x1f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x20

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x21

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x22

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udfff\u200d\u2642"

    aput-object v4, v0, v14

    const-string/jumbo v4, "\ud83d\ude47\u200d\u2642"

    const/16 v28, 0x24

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x25

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x26

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x27

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x28

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x29

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\u200d\u2640"

    aput-object v4, v0, v15

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x2b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x2c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x2d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x2e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x2f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude45\u200d\u2640"

    aput-object v4, v0, v16

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffb\u200d\u2640"

    aput-object v4, v0, v17

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffc\u200d\u2640"

    aput-object v4, v0, v18

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffd\u200d\u2640"

    aput-object v4, v0, v19

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffe\u200d\u2640"

    aput-object v4, v0, v20

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udfff\u200d\u2640"

    aput-object v4, v0, v21

    const-string/jumbo v4, "\ud83d\ude46\u200d\u2640"

    aput-object v4, v0, v22

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffb\u200d\u2640"

    aput-object v4, v0, v23

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffc\u200d\u2640"

    aput-object v4, v0, v24

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffd\u200d\u2640"

    aput-object v4, v0, v25

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x3a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x3b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\u200d\u2640"

    const/16 v28, 0x3c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x3d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x3e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x3f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x40

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x41

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\u200d\u2640"

    const/16 v28, 0x42

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x43

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x44

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x45

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x46

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x47

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\u200d\u2640"

    const/16 v28, 0x48

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x49

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x4a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x4b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x4c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x4d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\u200d\u2640"

    const/16 v28, 0x4e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x4f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x50

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x51

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x52

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x53

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\u200d\u2640"

    const/16 v28, 0x54

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x55

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x56

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x57

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x58

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x59

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\u200d\u2642"

    const/16 v28, 0x5a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x5b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x5c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x5d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x5e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x5f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\u200d\u2642"

    const/16 v28, 0x60

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x61

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x62

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x63

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x64

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x65

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\u200d\u2642"

    const/16 v28, 0x66

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x67

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x68

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x69

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x6a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\u26f9\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x6b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\u200d\u2642"

    const/16 v28, 0x6c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x6d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x6e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x6f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x70

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x71

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\u200d\u2642"

    const/16 v28, 0x72

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffb\u200d\u2642"

    aput-object v4, v0, v26

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x74

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x75

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x76

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x77

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\u200d\u2642"

    const/16 v28, 0x78

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x79

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x7a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x7b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x7c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x7d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\u200d\u2642"

    const/16 v28, 0x7e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x7f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x80

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x81

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x82

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x83

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\u200d\u2642"

    const/16 v28, 0x84

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x85

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x86

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x87

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x88

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x89

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\u200d\u2642"

    const/16 v28, 0x8a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffb\u200d\u2642"

    const/16 v28, 0x8b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffc\u200d\u2642"

    const/16 v28, 0x8c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffd\u200d\u2642"

    const/16 v28, 0x8d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffe\u200d\u2642"

    const/16 v28, 0x8e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udfff\u200d\u2642"

    const/16 v28, 0x8f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\u200d\u2640"

    const/16 v28, 0x90

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x91

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x92

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x93

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x94

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb8\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x95

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\u200d\u2640"

    const/16 v28, 0x96

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x97

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x98

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x99

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udffe\u200d\u2640"

    const/16 v28, 0x9a

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddb9\ud83c\udfff\u200d\u2640"

    const/16 v28, 0x9b

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\u200d\u2640"

    const/16 v28, 0x9c

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffb\u200d\u2640"

    const/16 v28, 0x9d

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffc\u200d\u2640"

    const/16 v28, 0x9e

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffd\u200d\u2640"

    const/16 v28, 0x9f

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udffe\u200d\u2640"

    const/16 v28, 0xa0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd9\ud83c\udfff\u200d\u2640"

    const/16 v28, 0xa1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\u200d\u2642"

    const/16 v28, 0xa2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xa3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xa4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xa5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xa6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddd\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xa7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\u200d\u2642"

    const/16 v28, 0xa8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xa9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xaa

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xab

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xac

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddb\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xad

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddf\u200d\u2642"

    const/16 v28, 0xae

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddde\u200d\u2642"

    const/16 v28, 0xaf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\u200d\u2642"

    const/16 v28, 0xb0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xb1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xb2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xb3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xb4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udddc\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xb5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\u200d\u2640"

    const/16 v28, 0xb6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffb\u200d\u2640"

    const/16 v28, 0xb7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffc\u200d\u2640"

    const/16 v28, 0xb8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffd\u200d\u2640"

    const/16 v28, 0xb9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udffe\u200d\u2640"

    const/16 v28, 0xba

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddda\ud83c\udfff\u200d\u2640"

    const/16 v28, 0xbb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\u200d\u2642"

    const/16 v28, 0xbc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xbd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xbe

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xbf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xc0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xc1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\u200d\u2640"

    const/16 v28, 0xc2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffb\u200d\u2640"

    const/16 v28, 0xc3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffc\u200d\u2640"

    const/16 v28, 0xc4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffd\u200d\u2640"

    const/16 v28, 0xc5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffe\u200d\u2640"

    const/16 v28, 0xc6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udfff\u200d\u2640"

    const/16 v28, 0xc7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\u200d\u2642"

    const/16 v28, 0xc8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xc9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xca

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xcb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xcc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd6\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xcd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc6f\u200d\u2640"

    const/16 v28, 0xce

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\u200d\u2642"

    const/16 v28, 0xcf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xd0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xd1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xd2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xd3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xd4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3c\u200d\u2640"

    const/16 v28, 0xd5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\u200d\u2642"

    const/16 v28, 0xd6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xd7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xd8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xd9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xda

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xdb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\u200d\u2640"

    const/16 v28, 0xdc

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffb\u200d\u2640"

    const/16 v28, 0xdd

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffc\u200d\u2640"

    const/16 v28, 0xde

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffd\u200d\u2640"

    const/16 v28, 0xdf

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffe\u200d\u2640"

    const/16 v28, 0xe0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udfff\u200d\u2640"

    const/16 v28, 0xe1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\u200d\u2640"

    const/16 v28, 0xe2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffb\u200d\u2640"

    const/16 v28, 0xe3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffc\u200d\u2640"

    const/16 v28, 0xe4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffd\u200d\u2640"

    const/16 v28, 0xe5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udffe\u200d\u2640"

    const/16 v28, 0xe6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd8\ud83c\udfff\u200d\u2640"

    const/16 v28, 0xe7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\u200d\u2642"

    const/16 v28, 0xe8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xe9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xea

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xeb

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xec

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xed

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\u200d\u2642"

    const/16 v28, 0xee

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xef

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xf0

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xf1

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xf2

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\uddd7\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xf3

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\u200d\u2642"

    const/16 v28, 0xf4

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffb\u200d\u2642"

    const/16 v28, 0xf5

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffc\u200d\u2642"

    const/16 v28, 0xf6

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffd\u200d\u2642"

    const/16 v28, 0xf7

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffe\u200d\u2642"

    const/16 v28, 0xf8

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udfff\u200d\u2642"

    const/16 v28, 0xf9

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc68"

    const/16 v28, 0xfa

    aput-object v4, v0, v28

    const-string/jumbo v4, "\ud83d\udd73\ufe0f"

    const/16 v28, 0xfb

    aput-object v4, v0, v28

    sput-object v0, Lorg/telegram/messenger/EmojiData;->aliasNew:[Ljava/lang/String;

    .line 492
    new-array v4, v12, [[Ljava/lang/String;

    move/from16 v28, v5

    const/16 v5, 0x7c8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v29, "\ud83d\ude00"

    aput-object v29, v5, v27

    const-string/jumbo v29, "\ud83d\ude03"

    aput-object v29, v5, v6

    const-string/jumbo v29, "\ud83d\ude04"

    aput-object v29, v5, v28

    const-string/jumbo v29, "\ud83d\ude01"

    aput-object v29, v5, v7

    const-string/jumbo v29, "\ud83d\ude06"

    aput-object v29, v5, v8

    const-string/jumbo v29, "\ud83e\udd79"

    aput-object v29, v5, v9

    const-string/jumbo v29, "\ud83d\ude05"

    aput-object v29, v5, v10

    const-string/jumbo v29, "\ud83d\ude02"

    aput-object v29, v5, v11

    const-string/jumbo v29, "\ud83e\udd23"

    aput-object v29, v5, v12

    const-string/jumbo v29, "\ud83e\udd72"

    const/16 v30, 0x9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u263a"

    const/16 v30, 0xa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude0a"

    const/16 v30, 0xb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude07"

    const/16 v30, 0xc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude42"

    const/16 v30, 0xd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude43"

    const/16 v30, 0xe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude09"

    const/16 v30, 0xf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude0c"

    const/16 v30, 0x10

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude0d"

    const/16 v30, 0x11

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd70"

    const/16 v30, 0x12

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude18"

    const/16 v30, 0x13

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude17"

    const/16 v30, 0x14

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude19"

    const/16 v30, 0x15

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude1a"

    const/16 v30, 0x16

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude0b"

    const/16 v30, 0x17

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude1b"

    const/16 v30, 0x18

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude1d"

    const/16 v30, 0x19

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude1c"

    const/16 v30, 0x1a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd2a"

    const/16 v30, 0x1b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd28"

    const/16 v30, 0x1c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd0"

    const/16 v30, 0x1d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd13"

    const/16 v30, 0x1e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude0e"

    const/16 v30, 0x1f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd78"

    const/16 v30, 0x20

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd29"

    const/16 v30, 0x21

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd73"

    const/16 v30, 0x22

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude42\u200d\u2195"

    aput-object v29, v5, v14

    const-string/jumbo v29, "\ud83d\ude0f"

    const/16 v30, 0x24

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude12"

    const/16 v30, 0x25

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude42\u200d\u2194"

    const/16 v30, 0x26

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude1e"

    const/16 v30, 0x27

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude14"

    const/16 v30, 0x28

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude1f"

    const/16 v30, 0x29

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude15"

    aput-object v29, v5, v15

    const-string/jumbo v29, "\ud83d\ude41"

    const/16 v30, 0x2b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2639"

    const/16 v30, 0x2c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude23"

    const/16 v30, 0x2d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude16"

    const/16 v30, 0x2e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude2b"

    const/16 v30, 0x2f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude29"

    aput-object v29, v5, v16

    const-string/jumbo v29, "\ud83e\udd7a"

    aput-object v29, v5, v17

    const-string/jumbo v29, "\ud83d\ude22"

    aput-object v29, v5, v18

    const-string/jumbo v29, "\ud83d\ude2d"

    aput-object v29, v5, v19

    const-string/jumbo v29, "\ud83d\ude24"

    aput-object v29, v5, v20

    const-string/jumbo v29, "\ud83d\ude20"

    aput-object v29, v5, v21

    const-string/jumbo v29, "\ud83d\ude21"

    aput-object v29, v5, v22

    const-string/jumbo v29, "\ud83e\udd2c"

    aput-object v29, v5, v23

    const-string/jumbo v29, "\ud83e\udd2f"

    aput-object v29, v5, v24

    const-string/jumbo v29, "\ud83d\ude33"

    aput-object v29, v5, v25

    const-string/jumbo v29, "\ud83e\udd75"

    const/16 v30, 0x3a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd76"

    const/16 v30, 0x3b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude36\u200d\ud83c\udf2b"

    const/16 v30, 0x3c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude31"

    const/16 v30, 0x3d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude28"

    const/16 v30, 0x3e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude30"

    const/16 v30, 0x3f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude25"

    const/16 v30, 0x40

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude13"

    const/16 v30, 0x41

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd17"

    const/16 v30, 0x42

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd14"

    const/16 v30, 0x43

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee3"

    const/16 v30, 0x44

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd2d"

    const/16 v30, 0x45

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee2"

    const/16 v30, 0x46

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee1"

    const/16 v30, 0x47

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd2b"

    const/16 v30, 0x48

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee0"

    const/16 v30, 0x49

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd25"

    const/16 v30, 0x4a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude36"

    const/16 v30, 0x4b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee5"

    const/16 v30, 0x4c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude10"

    const/16 v30, 0x4d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee4"

    const/16 v30, 0x4e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude11"

    const/16 v30, 0x4f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee8"

    const/16 v30, 0x50

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude2c"

    const/16 v30, 0x51

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude44"

    const/16 v30, 0x52

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude2f"

    const/16 v30, 0x53

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude26"

    const/16 v30, 0x54

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude27"

    const/16 v30, 0x55

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude2e"

    const/16 v30, 0x56

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude32"

    const/16 v30, 0x57

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd71"

    const/16 v30, 0x58

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee9"

    const/16 v30, 0x59

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude34"

    const/16 v30, 0x5a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd24"

    const/16 v30, 0x5b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude2a"

    const/16 v30, 0x5c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude2e\u200d\ud83d\udca8"

    const/16 v30, 0x5d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude35"

    const/16 v30, 0x5e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude35\u200d\ud83d\udcab"

    const/16 v30, 0x5f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd10"

    const/16 v30, 0x60

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd74"

    const/16 v30, 0x61

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd22"

    const/16 v30, 0x62

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd2e"

    const/16 v30, 0x63

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd27"

    const/16 v30, 0x64

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude37"

    const/16 v30, 0x65

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd12"

    const/16 v30, 0x66

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd15"

    const/16 v30, 0x67

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd11"

    const/16 v30, 0x68

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd20"

    const/16 v30, 0x69

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude08"

    const/16 v30, 0x6a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7f"

    const/16 v30, 0x6b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc79"

    const/16 v30, 0x6c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7a"

    const/16 v30, 0x6d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd21"

    const/16 v30, 0x6e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca9"

    const/16 v30, 0x6f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7b"

    const/16 v30, 0x70

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc80"

    const/16 v30, 0x71

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2620"

    const/16 v30, 0x72

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7d"

    aput-object v29, v5, v26

    const-string/jumbo v29, "\ud83d\udc7e"

    const/16 v30, 0x74

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd16"

    const/16 v30, 0x75

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf83"

    const/16 v30, 0x76

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude3a"

    const/16 v30, 0x77

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude38"

    const/16 v30, 0x78

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude39"

    const/16 v30, 0x79

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude3b"

    const/16 v30, 0x7a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude3c"

    const/16 v30, 0x7b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude3d"

    const/16 v30, 0x7c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude40"

    const/16 v30, 0x7d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude3f"

    const/16 v30, 0x7e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude3e"

    const/16 v30, 0x7f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef6"

    const/16 v30, 0x80

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef6\ud83c\udffb"

    const/16 v30, 0x81

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef6\ud83c\udffc"

    const/16 v30, 0x82

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef6\ud83c\udffd"

    const/16 v30, 0x83

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef6\ud83c\udffe"

    const/16 v30, 0x84

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef6\ud83c\udfff"

    const/16 v30, 0x85

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd32"

    const/16 v30, 0x86

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd32\ud83c\udffb"

    const/16 v30, 0x87

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd32\ud83c\udffc"

    const/16 v30, 0x88

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd32\ud83c\udffd"

    const/16 v30, 0x89

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd32\ud83c\udffe"

    const/16 v30, 0x8a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd32\ud83c\udfff"

    const/16 v30, 0x8b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc50"

    const/16 v30, 0x8c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc50\ud83c\udffb"

    const/16 v30, 0x8d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc50\ud83c\udffc"

    const/16 v30, 0x8e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc50\ud83c\udffd"

    const/16 v30, 0x8f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc50\ud83c\udffe"

    const/16 v30, 0x90

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc50\ud83c\udfff"

    const/16 v30, 0x91

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4c"

    const/16 v30, 0x92

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4c\ud83c\udffb"

    const/16 v30, 0x93

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4c\ud83c\udffc"

    const/16 v30, 0x94

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4c\ud83c\udffd"

    const/16 v30, 0x95

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4c\ud83c\udffe"

    const/16 v30, 0x96

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4c\ud83c\udfff"

    const/16 v30, 0x97

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4f"

    const/16 v30, 0x98

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4f\ud83c\udffb"

    const/16 v30, 0x99

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4f\ud83c\udffc"

    const/16 v30, 0x9a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4f\ud83c\udffd"

    const/16 v30, 0x9b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4f\ud83c\udffe"

    const/16 v30, 0x9c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4f\ud83c\udfff"

    const/16 v30, 0x9d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1d"

    const/16 v30, 0x9e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4d"

    const/16 v30, 0x9f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4d\ud83c\udffb"

    const/16 v30, 0xa0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4d\ud83c\udffc"

    const/16 v30, 0xa1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4d\ud83c\udffd"

    const/16 v30, 0xa2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4d\ud83c\udffe"

    const/16 v30, 0xa3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4d\ud83c\udfff"

    const/16 v30, 0xa4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4e"

    const/16 v30, 0xa5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4e\ud83c\udffb"

    const/16 v30, 0xa6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4e\ud83c\udffc"

    const/16 v30, 0xa7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4e\ud83c\udffd"

    const/16 v30, 0xa8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4e\ud83c\udffe"

    const/16 v30, 0xa9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4e\ud83c\udfff"

    const/16 v30, 0xaa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4a"

    const/16 v30, 0xab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4a\ud83c\udffb"

    const/16 v30, 0xac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4a\ud83c\udffc"

    const/16 v30, 0xad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4a\ud83c\udffd"

    const/16 v30, 0xae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4a\ud83c\udffe"

    const/16 v30, 0xaf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4a\ud83c\udfff"

    const/16 v30, 0xb0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270a"

    const/16 v30, 0xb1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270a\ud83c\udffb"

    const/16 v30, 0xb2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270a\ud83c\udffc"

    const/16 v30, 0xb3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270a\ud83c\udffd"

    const/16 v30, 0xb4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270a\ud83c\udffe"

    const/16 v30, 0xb5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270a\ud83c\udfff"

    const/16 v30, 0xb6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1b"

    const/16 v30, 0xb7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1b\ud83c\udffb"

    const/16 v30, 0xb8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1b\ud83c\udffc"

    const/16 v30, 0xb9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1b\ud83c\udffd"

    const/16 v30, 0xba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1b\ud83c\udffe"

    const/16 v30, 0xbb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1b\ud83c\udfff"

    const/16 v30, 0xbc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1c"

    const/16 v30, 0xbd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1c\ud83c\udffb"

    const/16 v30, 0xbe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1c\ud83c\udffc"

    const/16 v30, 0xbf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1c\ud83c\udffd"

    const/16 v30, 0xc0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1c\ud83c\udffe"

    const/16 v30, 0xc1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1c\ud83c\udfff"

    const/16 v30, 0xc2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef7"

    const/16 v30, 0xc3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef7\ud83c\udffb"

    const/16 v30, 0xc4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef7\ud83c\udffc"

    const/16 v30, 0xc5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef7\ud83c\udffd"

    const/16 v30, 0xc6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef7\ud83c\udffe"

    const/16 v30, 0xc7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef7\ud83c\udfff"

    const/16 v30, 0xc8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef8"

    const/16 v30, 0xc9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef8\ud83c\udffb"

    const/16 v30, 0xca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef8\ud83c\udffc"

    const/16 v30, 0xcb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef8\ud83c\udffd"

    const/16 v30, 0xcc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef8\ud83c\udffe"

    const/16 v30, 0xcd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef8\ud83c\udfff"

    const/16 v30, 0xce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1e"

    const/16 v30, 0xcf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1e\ud83c\udffb"

    const/16 v30, 0xd0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1e\ud83c\udffc"

    const/16 v30, 0xd1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1e\ud83c\udffd"

    const/16 v30, 0xd2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1e\ud83c\udffe"

    const/16 v30, 0xd3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1e\ud83c\udfff"

    const/16 v30, 0xd4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270c"

    const/16 v30, 0xd5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270c\ud83c\udffb"

    const/16 v30, 0xd6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270c\ud83c\udffc"

    const/16 v30, 0xd7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270c\ud83c\udffd"

    const/16 v30, 0xd8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270c\ud83c\udffe"

    const/16 v30, 0xd9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270c\ud83c\udfff"

    const/16 v30, 0xda

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef0"

    const/16 v30, 0xdb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef0\ud83c\udffb"

    const/16 v30, 0xdc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef0\ud83c\udffc"

    const/16 v30, 0xdd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef0\ud83c\udffd"

    const/16 v30, 0xde

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef0\ud83c\udffe"

    const/16 v30, 0xdf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef0\ud83c\udfff"

    const/16 v30, 0xe0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1f"

    const/16 v30, 0xe1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1f\ud83c\udffb"

    const/16 v30, 0xe2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1f\ud83c\udffc"

    const/16 v30, 0xe3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1f\ud83c\udffd"

    const/16 v30, 0xe4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1f\ud83c\udffe"

    const/16 v30, 0xe5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1f\ud83c\udfff"

    const/16 v30, 0xe6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd18"

    const/16 v30, 0xe7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd18\ud83c\udffb"

    const/16 v30, 0xe8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd18\ud83c\udffc"

    const/16 v30, 0xe9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd18\ud83c\udffd"

    const/16 v30, 0xea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd18\ud83c\udffe"

    const/16 v30, 0xeb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd18\ud83c\udfff"

    const/16 v30, 0xec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4c"

    const/16 v30, 0xed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4c\ud83c\udffb"

    const/16 v30, 0xee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4c\ud83c\udffc"

    const/16 v30, 0xef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4c\ud83c\udffd"

    const/16 v30, 0xf0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4c\ud83c\udffe"

    const/16 v30, 0xf1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4c\ud83c\udfff"

    const/16 v30, 0xf2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0c"

    const/16 v30, 0xf3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0c\ud83c\udffb"

    const/16 v30, 0xf4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0c\ud83c\udffc"

    const/16 v30, 0xf5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0c\ud83c\udffd"

    const/16 v30, 0xf6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0c\ud83c\udffe"

    const/16 v30, 0xf7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0c\ud83c\udfff"

    const/16 v30, 0xf8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0f"

    const/16 v30, 0xf9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0f\ud83c\udffb"

    const/16 v30, 0xfa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0f\ud83c\udffc"

    const/16 v30, 0xfb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0f\ud83c\udffd"

    const/16 v30, 0xfc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0f\ud83c\udffe"

    const/16 v30, 0xfd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0f\ud83c\udfff"

    const/16 v30, 0xfe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef3"

    const/16 v30, 0xff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef3\ud83c\udffb"

    const/16 v30, 0x100

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef3\ud83c\udffc"

    const/16 v30, 0x101

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef3\ud83c\udffd"

    const/16 v30, 0x102

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef3\ud83c\udffe"

    const/16 v30, 0x103

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef3\ud83c\udfff"

    const/16 v30, 0x104

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef4"

    const/16 v30, 0x105

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef4\ud83c\udffb"

    const/16 v30, 0x106

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef4\ud83c\udffc"

    const/16 v30, 0x107

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef4\ud83c\udffd"

    const/16 v30, 0x108

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef4\ud83c\udffe"

    const/16 v30, 0x109

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef4\ud83c\udfff"

    const/16 v30, 0x10a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc48"

    const/16 v30, 0x10b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc48\ud83c\udffb"

    const/16 v30, 0x10c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc48\ud83c\udffc"

    const/16 v30, 0x10d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc48\ud83c\udffd"

    const/16 v30, 0x10e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc48\ud83c\udffe"

    const/16 v30, 0x10f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc48\ud83c\udfff"

    const/16 v30, 0x110

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc49"

    const/16 v30, 0x111

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc49\ud83c\udffb"

    const/16 v30, 0x112

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc49\ud83c\udffc"

    const/16 v30, 0x113

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc49\ud83c\udffd"

    const/16 v30, 0x114

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc49\ud83c\udffe"

    const/16 v30, 0x115

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc49\ud83c\udfff"

    const/16 v30, 0x116

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc46"

    const/16 v30, 0x117

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc46\ud83c\udffb"

    const/16 v30, 0x118

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc46\ud83c\udffc"

    const/16 v30, 0x119

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc46\ud83c\udffd"

    const/16 v30, 0x11a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc46\ud83c\udffe"

    const/16 v30, 0x11b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc46\ud83c\udfff"

    const/16 v30, 0x11c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc47"

    const/16 v30, 0x11d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc47\ud83c\udffb"

    const/16 v30, 0x11e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc47\ud83c\udffc"

    const/16 v30, 0x11f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc47\ud83c\udffd"

    const/16 v30, 0x120

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc47\ud83c\udffe"

    const/16 v30, 0x121

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc47\ud83c\udfff"

    const/16 v30, 0x122

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u261d"

    const/16 v30, 0x123

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u261d\ud83c\udffb"

    const/16 v30, 0x124

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u261d\ud83c\udffc"

    const/16 v30, 0x125

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u261d\ud83c\udffd"

    const/16 v30, 0x126

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u261d\ud83c\udffe"

    const/16 v30, 0x127

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u261d\ud83c\udfff"

    const/16 v30, 0x128

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270b"

    const/16 v30, 0x129

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270b\ud83c\udffb"

    const/16 v30, 0x12a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270b\ud83c\udffc"

    const/16 v30, 0x12b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270b\ud83c\udffd"

    const/16 v30, 0x12c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270b\ud83c\udffe"

    const/16 v30, 0x12d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270b\ud83c\udfff"

    const/16 v30, 0x12e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1a"

    const/16 v30, 0x12f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1a\ud83c\udffb"

    const/16 v30, 0x130

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1a\ud83c\udffc"

    const/16 v30, 0x131

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1a\ud83c\udffd"

    const/16 v30, 0x132

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1a\ud83c\udffe"

    const/16 v30, 0x133

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd1a\ud83c\udfff"

    const/16 v30, 0x134

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd90"

    const/16 v30, 0x135

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd90\ud83c\udffb"

    const/16 v30, 0x136

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd90\ud83c\udffc"

    const/16 v30, 0x137

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd90\ud83c\udffd"

    const/16 v30, 0x138

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd90\ud83c\udffe"

    const/16 v30, 0x139

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd90\ud83c\udfff"

    const/16 v30, 0x13a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd96"

    const/16 v30, 0x13b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd96\ud83c\udffb"

    const/16 v30, 0x13c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd96\ud83c\udffc"

    const/16 v30, 0x13d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd96\ud83c\udffd"

    const/16 v30, 0x13e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd96\ud83c\udffe"

    const/16 v30, 0x13f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd96\ud83c\udfff"

    const/16 v30, 0x140

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4b"

    const/16 v30, 0x141

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4b\ud83c\udffb"

    const/16 v30, 0x142

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4b\ud83c\udffc"

    const/16 v30, 0x143

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4b\ud83c\udffd"

    const/16 v30, 0x144

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4b\ud83c\udffe"

    const/16 v30, 0x145

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc4b\ud83c\udfff"

    const/16 v30, 0x146

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd19"

    const/16 v30, 0x147

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd19\ud83c\udffb"

    const/16 v30, 0x148

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd19\ud83c\udffc"

    const/16 v30, 0x149

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd19\ud83c\udffd"

    const/16 v30, 0x14a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd19\ud83c\udffe"

    const/16 v30, 0x14b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd19\ud83c\udfff"

    const/16 v30, 0x14c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef2"

    const/16 v30, 0x14d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef2\ud83c\udffb"

    const/16 v30, 0x14e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef2\ud83c\udffc"

    const/16 v30, 0x14f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef2\ud83c\udffd"

    const/16 v30, 0x150

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef2\ud83c\udffe"

    const/16 v30, 0x151

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef2\ud83c\udfff"

    const/16 v30, 0x152

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef1"

    const/16 v30, 0x153

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef1\ud83c\udffb"

    const/16 v30, 0x154

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef1\ud83c\udffc"

    const/16 v30, 0x155

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef1\ud83c\udffd"

    const/16 v30, 0x156

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef1\ud83c\udffe"

    const/16 v30, 0x157

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef1\ud83c\udfff"

    const/16 v30, 0x158

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaa"

    const/16 v30, 0x159

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaa\ud83c\udffb"

    const/16 v30, 0x15a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaa\ud83c\udffc"

    const/16 v30, 0x15b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaa\ud83c\udffd"

    const/16 v30, 0x15c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaa\ud83c\udffe"

    const/16 v30, 0x15d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaa\ud83c\udfff"

    const/16 v30, 0x15e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbe"

    const/16 v30, 0x15f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd95"

    const/16 v30, 0x160

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd95\ud83c\udffb"

    const/16 v30, 0x161

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd95\ud83c\udffc"

    const/16 v30, 0x162

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd95\ud83c\udffd"

    const/16 v30, 0x163

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd95\ud83c\udffe"

    const/16 v30, 0x164

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd95\ud83c\udfff"

    const/16 v30, 0x165

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270d"

    const/16 v30, 0x166

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270d\ud83c\udffb"

    const/16 v30, 0x167

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270d\ud83c\udffc"

    const/16 v30, 0x168

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270d\ud83c\udffd"

    const/16 v30, 0x169

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270d\ud83c\udffe"

    const/16 v30, 0x16a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270d\ud83c\udfff"

    const/16 v30, 0x16b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4f"

    const/16 v30, 0x16c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4f\ud83c\udffb"

    const/16 v30, 0x16d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4f\ud83c\udffc"

    const/16 v30, 0x16e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4f\ud83c\udffd"

    const/16 v30, 0x16f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4f\ud83c\udffe"

    const/16 v30, 0x170

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4f\ud83c\udfff"

    const/16 v30, 0x171

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef5"

    const/16 v30, 0x172

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef5\ud83c\udffb"

    const/16 v30, 0x173

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef5\ud83c\udffc"

    const/16 v30, 0x174

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef5\ud83c\udffd"

    const/16 v30, 0x175

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef5\ud83c\udffe"

    const/16 v30, 0x176

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udef5\ud83c\udfff"

    const/16 v30, 0x177

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb6"

    const/16 v30, 0x178

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb6\ud83c\udffb"

    const/16 v30, 0x179

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb6\ud83c\udffc"

    const/16 v30, 0x17a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb6\ud83c\udffd"

    const/16 v30, 0x17b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb6\ud83c\udffe"

    const/16 v30, 0x17c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb6\ud83c\udfff"

    const/16 v30, 0x17d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb5"

    const/16 v30, 0x17e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb5\ud83c\udffb"

    const/16 v30, 0x17f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb5\ud83c\udffc"

    const/16 v30, 0x180

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb5\ud83c\udffd"

    const/16 v30, 0x181

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb5\ud83c\udffe"

    const/16 v30, 0x182

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb5\ud83c\udfff"

    const/16 v30, 0x183

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbf"

    const/16 v30, 0x184

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc84"

    const/16 v30, 0x185

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc8b"

    const/16 v30, 0x186

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc44"

    const/16 v30, 0x187

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee6"

    const/16 v30, 0x188

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb7"

    const/16 v30, 0x189

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc45"

    const/16 v30, 0x18a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc42"

    const/16 v30, 0x18b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc42\ud83c\udffb"

    const/16 v30, 0x18c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc42\ud83c\udffc"

    const/16 v30, 0x18d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc42\ud83c\udffd"

    const/16 v30, 0x18e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc42\ud83c\udffe"

    const/16 v30, 0x18f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc42\ud83c\udfff"

    const/16 v30, 0x190

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbb"

    const/16 v30, 0x191

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbb\ud83c\udffb"

    const/16 v30, 0x192

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbb\ud83c\udffc"

    const/16 v30, 0x193

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbb\ud83c\udffd"

    const/16 v30, 0x194

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbb\ud83c\udffe"

    const/16 v30, 0x195

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddbb\ud83c\udfff"

    const/16 v30, 0x196

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc43"

    const/16 v30, 0x197

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc43\ud83c\udffb"

    const/16 v30, 0x198

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc43\ud83c\udffc"

    const/16 v30, 0x199

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc43\ud83c\udffd"

    const/16 v30, 0x19a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc43\ud83c\udffe"

    const/16 v30, 0x19b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc43\ud83c\udfff"

    const/16 v30, 0x19c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec6"

    const/16 v30, 0x19d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc63"

    const/16 v30, 0x19e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc41"

    const/16 v30, 0x19f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc40"

    const/16 v30, 0x1a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec0"

    const/16 v30, 0x1a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec1"

    const/16 v30, 0x1a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde0"

    const/16 v30, 0x1a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udde3"

    const/16 v30, 0x1a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc64"

    const/16 v30, 0x1a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc65"

    const/16 v30, 0x1a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec2"

    const/16 v30, 0x1a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc76"

    const/16 v30, 0x1a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc76\ud83c\udffb"

    const/16 v30, 0x1a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc76\ud83c\udffc"

    const/16 v30, 0x1aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc76\ud83c\udffd"

    const/16 v30, 0x1ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc76\ud83c\udffe"

    const/16 v30, 0x1ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc76\ud83c\udfff"

    const/16 v30, 0x1ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc67"

    const/16 v30, 0x1ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc67\ud83c\udffb"

    const/16 v30, 0x1af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc67\ud83c\udffc"

    const/16 v30, 0x1b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc67\ud83c\udffd"

    const/16 v30, 0x1b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc67\ud83c\udffe"

    const/16 v30, 0x1b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc67\ud83c\udfff"

    const/16 v30, 0x1b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd2"

    const/16 v30, 0x1b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd2\ud83c\udffb"

    const/16 v30, 0x1b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd2\ud83c\udffc"

    const/16 v30, 0x1b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd2\ud83c\udffd"

    const/16 v30, 0x1b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd2\ud83c\udffe"

    const/16 v30, 0x1b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd2\ud83c\udfff"

    const/16 v30, 0x1b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc66"

    const/16 v30, 0x1ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc66\ud83c\udffb"

    const/16 v30, 0x1bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc66\ud83c\udffc"

    const/16 v30, 0x1bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc66\ud83c\udffd"

    const/16 v30, 0x1bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc66\ud83c\udffe"

    const/16 v30, 0x1be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc66\ud83c\udfff"

    const/16 v30, 0x1bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69"

    const/16 v30, 0x1c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x1c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x1c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x1c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x1c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x1c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1"

    const/16 v30, 0x1c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x1c7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x1c8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x1c9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x1ca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x1cb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68"

    const/16 v30, 0x1cc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x1cd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x1ce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x1cf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x1d0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x1d1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddb1"

    const/16 v30, 0x1d2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb1"

    const/16 v30, 0x1d3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb1"

    const/16 v30, 0x1d4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb1"

    const/16 v30, 0x1d5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb1"

    const/16 v30, 0x1d6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb1"

    const/16 v30, 0x1d7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddb1"

    const/16 v30, 0x1d8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb1"

    const/16 v30, 0x1d9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb1"

    const/16 v30, 0x1da

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb1"

    const/16 v30, 0x1db

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb1"

    const/16 v30, 0x1dc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb1"

    const/16 v30, 0x1dd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddb1"

    const/16 v30, 0x1de

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb1"

    const/16 v30, 0x1df

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb1"

    const/16 v30, 0x1e0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb1"

    const/16 v30, 0x1e1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb1"

    const/16 v30, 0x1e2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb1"

    const/16 v30, 0x1e3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddb0"

    const/16 v30, 0x1e4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb0"

    const/16 v30, 0x1e5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb0"

    const/16 v30, 0x1e6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb0"

    const/16 v30, 0x1e7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb0"

    const/16 v30, 0x1e8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb0"

    const/16 v30, 0x1e9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddb0"

    const/16 v30, 0x1ea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb0"

    const/16 v30, 0x1eb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb0"

    const/16 v30, 0x1ec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb0"

    const/16 v30, 0x1ed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb0"

    const/16 v30, 0x1ee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb0"

    const/16 v30, 0x1ef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddb0"

    const/16 v30, 0x1f0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb0"

    const/16 v30, 0x1f1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb0"

    const/16 v30, 0x1f2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb0"

    const/16 v30, 0x1f3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb0"

    const/16 v30, 0x1f4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb0"

    const/16 v30, 0x1f5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\u200d\u2640"

    const/16 v30, 0x1f6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x1f7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x1f8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x1f9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x1fa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x1fb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71"

    const/16 v30, 0x1fc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffb"

    const/16 v30, 0x1fd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffc"

    const/16 v30, 0x1fe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffd"

    const/16 v30, 0x1ff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffe"

    const/16 v30, 0x200

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udfff"

    const/16 v30, 0x201

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\u200d\u2642"

    const/16 v30, 0x202

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x203

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x204

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x205

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x206

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc71\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x207

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddb3"

    const/16 v30, 0x208

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb3"

    const/16 v30, 0x209

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb3"

    const/16 v30, 0x20a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb3"

    const/16 v30, 0x20b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb3"

    const/16 v30, 0x20c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb3"

    const/16 v30, 0x20d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddb3"

    const/16 v30, 0x20e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb3"

    const/16 v30, 0x20f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb3"

    const/16 v30, 0x210

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb3"

    const/16 v30, 0x211

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb3"

    const/16 v30, 0x212

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb3"

    const/16 v30, 0x213

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddb3"

    const/16 v30, 0x214

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb3"

    const/16 v30, 0x215

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb3"

    const/16 v30, 0x216

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb3"

    const/16 v30, 0x217

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb3"

    const/16 v30, 0x218

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb3"

    const/16 v30, 0x219

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddb2"

    const/16 v30, 0x21a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb2"

    const/16 v30, 0x21b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb2"

    const/16 v30, 0x21c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb2"

    const/16 v30, 0x21d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb2"

    const/16 v30, 0x21e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb2"

    const/16 v30, 0x21f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddb2"

    const/16 v30, 0x220

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb2"

    const/16 v30, 0x221

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb2"

    const/16 v30, 0x222

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb2"

    const/16 v30, 0x223

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb2"

    const/16 v30, 0x224

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb2"

    const/16 v30, 0x225

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddb2"

    const/16 v30, 0x226

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb2"

    const/16 v30, 0x227

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb2"

    const/16 v30, 0x228

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb2"

    const/16 v30, 0x229

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb2"

    const/16 v30, 0x22a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb2"

    const/16 v30, 0x22b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\u200d\u2640"

    const/16 v30, 0x22c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x22d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x22e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x22f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x230

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x231

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4"

    const/16 v30, 0x232

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffb"

    const/16 v30, 0x233

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffc"

    const/16 v30, 0x234

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffd"

    const/16 v30, 0x235

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffe"

    const/16 v30, 0x236

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udfff"

    const/16 v30, 0x237

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\u200d\u2642"

    const/16 v30, 0x238

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x239

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x23a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x23b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x23c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd4\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x23d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc75"

    const/16 v30, 0x23e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc75\ud83c\udffb"

    const/16 v30, 0x23f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc75\ud83c\udffc"

    const/16 v30, 0x240

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc75\ud83c\udffd"

    const/16 v30, 0x241

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc75\ud83c\udffe"

    const/16 v30, 0x242

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc75\ud83c\udfff"

    const/16 v30, 0x243

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd3"

    const/16 v30, 0x244

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd3\ud83c\udffb"

    const/16 v30, 0x245

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd3\ud83c\udffc"

    const/16 v30, 0x246

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd3\ud83c\udffd"

    const/16 v30, 0x247

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd3\ud83c\udffe"

    const/16 v30, 0x248

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd3\ud83c\udfff"

    const/16 v30, 0x249

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc74"

    const/16 v30, 0x24a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc74\ud83c\udffb"

    const/16 v30, 0x24b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc74\ud83c\udffc"

    const/16 v30, 0x24c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc74\ud83c\udffd"

    const/16 v30, 0x24d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc74\ud83c\udffe"

    const/16 v30, 0x24e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc74\ud83c\udfff"

    const/16 v30, 0x24f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc72"

    const/16 v30, 0x250

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc72\ud83c\udffb"

    const/16 v30, 0x251

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc72\ud83c\udffc"

    const/16 v30, 0x252

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc72\ud83c\udffd"

    const/16 v30, 0x253

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc72\ud83c\udffe"

    const/16 v30, 0x254

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc72\ud83c\udfff"

    const/16 v30, 0x255

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\u200d\u2640"

    const/16 v30, 0x256

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x257

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x258

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x259

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x25a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x25b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73"

    const/16 v30, 0x25c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffb"

    const/16 v30, 0x25d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffc"

    const/16 v30, 0x25e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffd"

    const/16 v30, 0x25f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffe"

    const/16 v30, 0x260

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udfff"

    const/16 v30, 0x261

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\u200d\u2642"

    const/16 v30, 0x262

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x263

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x264

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x265

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x266

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc73\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x267

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd5"

    const/16 v30, 0x268

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd5\ud83c\udffb"

    const/16 v30, 0x269

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd5\ud83c\udffc"

    const/16 v30, 0x26a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd5\ud83c\udffd"

    const/16 v30, 0x26b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd5\ud83c\udffe"

    const/16 v30, 0x26c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd5\ud83c\udfff"

    const/16 v30, 0x26d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\u200d\u2640"

    const/16 v30, 0x26e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x26f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x270

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x271

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x272

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x273

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e"

    const/16 v30, 0x274

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffb"

    const/16 v30, 0x275

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffc"

    const/16 v30, 0x276

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffd"

    const/16 v30, 0x277

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffe"

    const/16 v30, 0x278

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udfff"

    const/16 v30, 0x279

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\u200d\u2642"

    const/16 v30, 0x27a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x27b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x27c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x27d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x27e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6e\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x27f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\u200d\u2640"

    const/16 v30, 0x280

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x281

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x282

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x283

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x284

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x285

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77"

    const/16 v30, 0x286

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffb"

    const/16 v30, 0x287

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffc"

    const/16 v30, 0x288

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffd"

    const/16 v30, 0x289

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffe"

    const/16 v30, 0x28a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udfff"

    const/16 v30, 0x28b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\u200d\u2642"

    const/16 v30, 0x28c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x28d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x28e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x28f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x290

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc77\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x291

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\u200d\u2640"

    const/16 v30, 0x292

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x293

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x294

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x295

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x296

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x297

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82"

    const/16 v30, 0x298

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffb"

    const/16 v30, 0x299

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffc"

    const/16 v30, 0x29a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffd"

    const/16 v30, 0x29b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffe"

    const/16 v30, 0x29c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udfff"

    const/16 v30, 0x29d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\u200d\u2642"

    const/16 v30, 0x29e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x29f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x2a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x2a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x2a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc82\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x2a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\u200d\u2640"

    const/16 v30, 0x2a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x2a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x2a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x2a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x2a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x2a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75"

    const/16 v30, 0x2aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffb"

    const/16 v30, 0x2ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffc"

    const/16 v30, 0x2ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffd"

    const/16 v30, 0x2ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffe"

    const/16 v30, 0x2ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udfff"

    const/16 v30, 0x2af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\u200d\u2642"

    const/16 v30, 0x2b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x2b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x2b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x2b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x2b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd75\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x2b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2695"

    const/16 v30, 0x2b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2695"

    const/16 v30, 0x2b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2695"

    const/16 v30, 0x2b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2695"

    const/16 v30, 0x2b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2695"

    const/16 v30, 0x2ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2695"

    const/16 v30, 0x2bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\u2695"

    const/16 v30, 0x2bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2695"

    const/16 v30, 0x2bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2695"

    const/16 v30, 0x2be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2695"

    const/16 v30, 0x2bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2695"

    const/16 v30, 0x2c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2695"

    const/16 v30, 0x2c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\u2695"

    const/16 v30, 0x2c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2695"

    const/16 v30, 0x2c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2695"

    const/16 v30, 0x2c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2695"

    const/16 v30, 0x2c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2695"

    const/16 v30, 0x2c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2695"

    const/16 v30, 0x2c7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udf3e"

    const/16 v30, 0x2c8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf3e"

    const/16 v30, 0x2c9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf3e"

    const/16 v30, 0x2ca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf3e"

    const/16 v30, 0x2cb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf3e"

    const/16 v30, 0x2cc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf3e"

    const/16 v30, 0x2cd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udf3e"

    const/16 v30, 0x2ce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf3e"

    const/16 v30, 0x2cf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf3e"

    const/16 v30, 0x2d0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf3e"

    const/16 v30, 0x2d1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf3e"

    const/16 v30, 0x2d2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf3e"

    const/16 v30, 0x2d3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udf3e"

    const/16 v30, 0x2d4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf3e"

    const/16 v30, 0x2d5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf3e"

    const/16 v30, 0x2d6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf3e"

    const/16 v30, 0x2d7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf3e"

    const/16 v30, 0x2d8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf3e"

    const/16 v30, 0x2d9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udf73"

    const/16 v30, 0x2da

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf73"

    const/16 v30, 0x2db

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf73"

    const/16 v30, 0x2dc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf73"

    const/16 v30, 0x2dd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf73"

    const/16 v30, 0x2de

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf73"

    const/16 v30, 0x2df

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udf73"

    const/16 v30, 0x2e0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf73"

    const/16 v30, 0x2e1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf73"

    const/16 v30, 0x2e2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf73"

    const/16 v30, 0x2e3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf73"

    const/16 v30, 0x2e4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf73"

    const/16 v30, 0x2e5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udf73"

    const/16 v30, 0x2e6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73"

    const/16 v30, 0x2e7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf73"

    const/16 v30, 0x2e8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf73"

    const/16 v30, 0x2e9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf73"

    const/16 v30, 0x2ea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf73"

    const/16 v30, 0x2eb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udf93"

    const/16 v30, 0x2ec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf93"

    const/16 v30, 0x2ed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf93"

    const/16 v30, 0x2ee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf93"

    const/16 v30, 0x2ef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf93"

    const/16 v30, 0x2f0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf93"

    const/16 v30, 0x2f1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udf93"

    const/16 v30, 0x2f2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf93"

    const/16 v30, 0x2f3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf93"

    const/16 v30, 0x2f4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf93"

    const/16 v30, 0x2f5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf93"

    const/16 v30, 0x2f6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf93"

    const/16 v30, 0x2f7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udf93"

    const/16 v30, 0x2f8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf93"

    const/16 v30, 0x2f9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf93"

    const/16 v30, 0x2fa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf93"

    const/16 v30, 0x2fb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf93"

    const/16 v30, 0x2fc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf93"

    const/16 v30, 0x2fd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udfa4"

    const/16 v30, 0x2fe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa4"

    const/16 v30, 0x2ff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfa4"

    const/16 v30, 0x300

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfa4"

    const/16 v30, 0x301

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfa4"

    const/16 v30, 0x302

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfa4"

    const/16 v30, 0x303

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udfa4"

    const/16 v30, 0x304

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfa4"

    const/16 v30, 0x305

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfa4"

    const/16 v30, 0x306

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfa4"

    const/16 v30, 0x307

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfa4"

    const/16 v30, 0x308

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfa4"

    const/16 v30, 0x309

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udfa4"

    const/16 v30, 0x30a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa4"

    const/16 v30, 0x30b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfa4"

    const/16 v30, 0x30c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfa4"

    const/16 v30, 0x30d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfa4"

    const/16 v30, 0x30e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfa4"

    const/16 v30, 0x30f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udfeb"

    const/16 v30, 0x310

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfeb"

    const/16 v30, 0x311

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfeb"

    const/16 v30, 0x312

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfeb"

    const/16 v30, 0x313

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfeb"

    const/16 v30, 0x314

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfeb"

    const/16 v30, 0x315

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udfeb"

    const/16 v30, 0x316

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfeb"

    const/16 v30, 0x317

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfeb"

    const/16 v30, 0x318

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfeb"

    const/16 v30, 0x319

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfeb"

    const/16 v30, 0x31a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfeb"

    const/16 v30, 0x31b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udfeb"

    const/16 v30, 0x31c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfeb"

    const/16 v30, 0x31d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfeb"

    const/16 v30, 0x31e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfeb"

    const/16 v30, 0x31f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfeb"

    const/16 v30, 0x320

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfeb"

    const/16 v30, 0x321

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udfed"

    const/16 v30, 0x322

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfed"

    const/16 v30, 0x323

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfed"

    const/16 v30, 0x324

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfed"

    const/16 v30, 0x325

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfed"

    const/16 v30, 0x326

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfed"

    const/16 v30, 0x327

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udfed"

    const/16 v30, 0x328

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfed"

    const/16 v30, 0x329

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfed"

    const/16 v30, 0x32a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfed"

    const/16 v30, 0x32b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfed"

    const/16 v30, 0x32c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfed"

    const/16 v30, 0x32d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udfed"

    const/16 v30, 0x32e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfed"

    const/16 v30, 0x32f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfed"

    const/16 v30, 0x330

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfed"

    const/16 v30, 0x331

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfed"

    const/16 v30, 0x332

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfed"

    const/16 v30, 0x333

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udcbb"

    const/16 v30, 0x334

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udcbb"

    const/16 v30, 0x335

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udcbb"

    const/16 v30, 0x336

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udcbb"

    const/16 v30, 0x337

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udcbb"

    const/16 v30, 0x338

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udcbb"

    const/16 v30, 0x339

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83d\udcbb"

    const/16 v30, 0x33a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udcbb"

    const/16 v30, 0x33b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udcbb"

    const/16 v30, 0x33c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udcbb"

    const/16 v30, 0x33d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udcbb"

    const/16 v30, 0x33e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udcbb"

    const/16 v30, 0x33f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udcbb"

    const/16 v30, 0x340

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udcbb"

    const/16 v30, 0x341

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udcbb"

    const/16 v30, 0x342

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udcbb"

    const/16 v30, 0x343

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udcbb"

    const/16 v30, 0x344

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udcbb"

    const/16 v30, 0x345

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udcbc"

    const/16 v30, 0x346

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udcbc"

    const/16 v30, 0x347

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udcbc"

    const/16 v30, 0x348

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udcbc"

    const/16 v30, 0x349

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udcbc"

    const/16 v30, 0x34a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udcbc"

    const/16 v30, 0x34b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83d\udcbc"

    const/16 v30, 0x34c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udcbc"

    const/16 v30, 0x34d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udcbc"

    const/16 v30, 0x34e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udcbc"

    const/16 v30, 0x34f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udcbc"

    const/16 v30, 0x350

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udcbc"

    const/16 v30, 0x351

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udcbc"

    const/16 v30, 0x352

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udcbc"

    const/16 v30, 0x353

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udcbc"

    const/16 v30, 0x354

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udcbc"

    const/16 v30, 0x355

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udcbc"

    const/16 v30, 0x356

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udcbc"

    const/16 v30, 0x357

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udd27"

    const/16 v30, 0x358

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udd27"

    const/16 v30, 0x359

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udd27"

    const/16 v30, 0x35a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udd27"

    const/16 v30, 0x35b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udd27"

    const/16 v30, 0x35c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udd27"

    const/16 v30, 0x35d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83d\udd27"

    const/16 v30, 0x35e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udd27"

    const/16 v30, 0x35f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udd27"

    const/16 v30, 0x360

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udd27"

    const/16 v30, 0x361

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udd27"

    const/16 v30, 0x362

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udd27"

    const/16 v30, 0x363

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udd27"

    const/16 v30, 0x364

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udd27"

    const/16 v30, 0x365

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udd27"

    const/16 v30, 0x366

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udd27"

    const/16 v30, 0x367

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udd27"

    const/16 v30, 0x368

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udd27"

    const/16 v30, 0x369

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udd2c"

    const/16 v30, 0x36a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udd2c"

    const/16 v30, 0x36b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udd2c"

    const/16 v30, 0x36c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udd2c"

    const/16 v30, 0x36d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udd2c"

    const/16 v30, 0x36e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udd2c"

    const/16 v30, 0x36f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83d\udd2c"

    const/16 v30, 0x370

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udd2c"

    const/16 v30, 0x371

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udd2c"

    const/16 v30, 0x372

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udd2c"

    const/16 v30, 0x373

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udd2c"

    const/16 v30, 0x374

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udd2c"

    const/16 v30, 0x375

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udd2c"

    const/16 v30, 0x376

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udd2c"

    const/16 v30, 0x377

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udd2c"

    const/16 v30, 0x378

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udd2c"

    const/16 v30, 0x379

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udd2c"

    const/16 v30, 0x37a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udd2c"

    const/16 v30, 0x37b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udfa8"

    const/16 v30, 0x37c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa8"

    const/16 v30, 0x37d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfa8"

    const/16 v30, 0x37e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfa8"

    const/16 v30, 0x37f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfa8"

    const/16 v30, 0x380

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfa8"

    const/16 v30, 0x381

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udfa8"

    const/16 v30, 0x382

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfa8"

    const/16 v30, 0x383

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfa8"

    const/16 v30, 0x384

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfa8"

    const/16 v30, 0x385

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfa8"

    const/16 v30, 0x386

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfa8"

    const/16 v30, 0x387

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udfa8"

    const/16 v30, 0x388

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa8"

    const/16 v30, 0x389

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfa8"

    const/16 v30, 0x38a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfa8"

    const/16 v30, 0x38b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfa8"

    const/16 v30, 0x38c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfa8"

    const/16 v30, 0x38d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\ude92"

    const/16 v30, 0x38e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\ude92"

    const/16 v30, 0x38f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\ude92"

    const/16 v30, 0x390

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\ude92"

    const/16 v30, 0x391

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\ude92"

    const/16 v30, 0x392

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\ude92"

    const/16 v30, 0x393

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83d\ude92"

    const/16 v30, 0x394

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\ude92"

    const/16 v30, 0x395

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\ude92"

    const/16 v30, 0x396

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\ude92"

    const/16 v30, 0x397

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\ude92"

    const/16 v30, 0x398

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\ude92"

    const/16 v30, 0x399

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\ude92"

    const/16 v30, 0x39a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\ude92"

    const/16 v30, 0x39b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\ude92"

    const/16 v30, 0x39c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\ude92"

    const/16 v30, 0x39d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\ude92"

    const/16 v30, 0x39e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\ude92"

    const/16 v30, 0x39f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2708"

    const/16 v30, 0x3a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2708"

    const/16 v30, 0x3a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2708"

    const/16 v30, 0x3a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2708"

    const/16 v30, 0x3a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2708"

    const/16 v30, 0x3a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2708"

    const/16 v30, 0x3a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\u2708"

    const/16 v30, 0x3a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2708"

    const/16 v30, 0x3a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2708"

    const/16 v30, 0x3a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2708"

    const/16 v30, 0x3a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2708"

    const/16 v30, 0x3aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2708"

    const/16 v30, 0x3ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\u2708"

    const/16 v30, 0x3ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2708"

    const/16 v30, 0x3ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2708"

    const/16 v30, 0x3ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2708"

    const/16 v30, 0x3af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2708"

    const/16 v30, 0x3b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2708"

    const/16 v30, 0x3b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\ude80"

    const/16 v30, 0x3b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\ude80"

    const/16 v30, 0x3b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\ude80"

    const/16 v30, 0x3b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\ude80"

    const/16 v30, 0x3b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\ude80"

    const/16 v30, 0x3b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\ude80"

    const/16 v30, 0x3b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83d\ude80"

    const/16 v30, 0x3b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\ude80"

    const/16 v30, 0x3b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\ude80"

    const/16 v30, 0x3ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\ude80"

    const/16 v30, 0x3bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\ude80"

    const/16 v30, 0x3bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\ude80"

    const/16 v30, 0x3bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\ude80"

    const/16 v30, 0x3be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\ude80"

    const/16 v30, 0x3bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\ude80"

    const/16 v30, 0x3c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\ude80"

    const/16 v30, 0x3c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\ude80"

    const/16 v30, 0x3c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\ude80"

    const/16 v30, 0x3c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2696"

    const/16 v30, 0x3c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2696"

    const/16 v30, 0x3c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2696"

    const/16 v30, 0x3c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2696"

    const/16 v30, 0x3c7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2696"

    const/16 v30, 0x3c8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2696"

    const/16 v30, 0x3c9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\u2696"

    const/16 v30, 0x3ca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2696"

    const/16 v30, 0x3cb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2696"

    const/16 v30, 0x3cc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2696"

    const/16 v30, 0x3cd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2696"

    const/16 v30, 0x3ce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2696"

    const/16 v30, 0x3cf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\u2696"

    const/16 v30, 0x3d0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2696"

    const/16 v30, 0x3d1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2696"

    const/16 v30, 0x3d2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2696"

    const/16 v30, 0x3d3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2696"

    const/16 v30, 0x3d4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2696"

    const/16 v30, 0x3d5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\u200d\u2640"

    const/16 v30, 0x3d6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x3d7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x3d8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x3d9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x3da

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x3db

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70"

    const/16 v30, 0x3dc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffb"

    const/16 v30, 0x3dd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffc"

    const/16 v30, 0x3de

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffd"

    const/16 v30, 0x3df

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffe"

    const/16 v30, 0x3e0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udfff"

    const/16 v30, 0x3e1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\u200d\u2642"

    const/16 v30, 0x3e2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x3e3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x3e4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x3e5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x3e6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc70\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x3e7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\u200d\u2640"

    const/16 v30, 0x3e8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x3e9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x3ea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x3eb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x3ec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x3ed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35"

    const/16 v30, 0x3ee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffb"

    const/16 v30, 0x3ef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffc"

    const/16 v30, 0x3f0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffd"

    const/16 v30, 0x3f1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffe"

    const/16 v30, 0x3f2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udfff"

    const/16 v30, 0x3f3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\u200d\u2642"

    const/16 v30, 0x3f4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x3f5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x3f6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x3f7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x3f8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd35\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x3f9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc78"

    const/16 v30, 0x3fa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc78\ud83c\udffb"

    const/16 v30, 0x3fb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc78\ud83c\udffc"

    const/16 v30, 0x3fc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc78\ud83c\udffd"

    const/16 v30, 0x3fd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc78\ud83c\udffe"

    const/16 v30, 0x3fe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc78\ud83c\udfff"

    const/16 v30, 0x3ff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec5"

    const/16 v30, 0x400

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec5\ud83c\udffb"

    const/16 v30, 0x401

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec5\ud83c\udffc"

    const/16 v30, 0x402

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec5\ud83c\udffd"

    const/16 v30, 0x403

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec5\ud83c\udffe"

    const/16 v30, 0x404

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec5\ud83c\udfff"

    const/16 v30, 0x405

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd34"

    const/16 v30, 0x406

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd34\ud83c\udffb"

    const/16 v30, 0x407

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd34\ud83c\udffc"

    const/16 v30, 0x408

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd34\ud83c\udffd"

    const/16 v30, 0x409

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd34\ud83c\udffe"

    const/16 v30, 0x40a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd34\ud83c\udfff"

    const/16 v30, 0x40b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd77"

    const/16 v30, 0x40c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd77\ud83c\udffb"

    const/16 v30, 0x40d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd77\ud83c\udffc"

    const/16 v30, 0x40e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd77\ud83c\udffd"

    const/16 v30, 0x40f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd77\ud83c\udffe"

    const/16 v30, 0x410

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd77\ud83c\udfff"

    const/16 v30, 0x411

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\u200d\u2640"

    const/16 v30, 0x412

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x413

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x414

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x415

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x416

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x417

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8"

    const/16 v30, 0x418

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffb"

    const/16 v30, 0x419

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffc"

    const/16 v30, 0x41a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffd"

    const/16 v30, 0x41b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffe"

    const/16 v30, 0x41c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udfff"

    const/16 v30, 0x41d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\u200d\u2642"

    const/16 v30, 0x41e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x41f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x420

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x421

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x422

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb8\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x423

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\u200d\u2640"

    const/16 v30, 0x424

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x425

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x426

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x427

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x428

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x429

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9"

    const/16 v30, 0x42a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffb"

    const/16 v30, 0x42b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffc"

    const/16 v30, 0x42c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffd"

    const/16 v30, 0x42d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffe"

    const/16 v30, 0x42e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udfff"

    const/16 v30, 0x42f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\u200d\u2642"

    const/16 v30, 0x430

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x431

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x432

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x433

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x434

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddb9\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x435

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd36"

    const/16 v30, 0x436

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd36\ud83c\udffb"

    const/16 v30, 0x437

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd36\ud83c\udffc"

    const/16 v30, 0x438

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd36\ud83c\udffd"

    const/16 v30, 0x439

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd36\ud83c\udffe"

    const/16 v30, 0x43a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd36\ud83c\udfff"

    const/16 v30, 0x43b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udf84"

    const/16 v30, 0x43c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf84"

    const/16 v30, 0x43d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf84"

    const/16 v30, 0x43e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf84"

    const/16 v30, 0x43f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf84"

    const/16 v30, 0x440

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf84"

    const/16 v30, 0x441

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf85"

    const/16 v30, 0x442

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf85\ud83c\udffb"

    const/16 v30, 0x443

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf85\ud83c\udffc"

    const/16 v30, 0x444

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf85\ud83c\udffd"

    const/16 v30, 0x445

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf85\ud83c\udffe"

    const/16 v30, 0x446

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf85\ud83c\udfff"

    const/16 v30, 0x447

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\u200d\u2640"

    const/16 v30, 0x448

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x449

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x44a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x44b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x44c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x44d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9"

    const/16 v30, 0x44e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffb"

    const/16 v30, 0x44f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffc"

    const/16 v30, 0x450

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffd"

    const/16 v30, 0x451

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffe"

    const/16 v30, 0x452

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udfff"

    const/16 v30, 0x453

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\u200d\u2642"

    const/16 v30, 0x454

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x455

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x456

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x457

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x458

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd9\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x459

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\u200d\u2640"

    const/16 v30, 0x45a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x45b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x45c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x45d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x45e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x45f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd"

    const/16 v30, 0x460

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffb"

    const/16 v30, 0x461

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffc"

    const/16 v30, 0x462

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffd"

    const/16 v30, 0x463

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffe"

    const/16 v30, 0x464

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udfff"

    const/16 v30, 0x465

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\u200d\u2642"

    const/16 v30, 0x466

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x467

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x468

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x469

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x46a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddd\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x46b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcc"

    const/16 v30, 0x46c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\u200d\u2640"

    const/16 v30, 0x46d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x46e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x46f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x470

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x471

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x472

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb"

    const/16 v30, 0x473

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffb"

    const/16 v30, 0x474

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffc"

    const/16 v30, 0x475

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffd"

    const/16 v30, 0x476

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffe"

    const/16 v30, 0x477

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udfff"

    const/16 v30, 0x478

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\u200d\u2642"

    const/16 v30, 0x479

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x47a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x47b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x47c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x47d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddb\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x47e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddf\u200d\u2640"

    const/16 v30, 0x47f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddf"

    const/16 v30, 0x480

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddf\u200d\u2642"

    const/16 v30, 0x481

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddde\u200d\u2640"

    const/16 v30, 0x482

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddde"

    const/16 v30, 0x483

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddde\u200d\u2642"

    const/16 v30, 0x484

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\u200d\u2640"

    const/16 v30, 0x485

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x486

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x487

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x488

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x489

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x48a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc"

    const/16 v30, 0x48b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffb"

    const/16 v30, 0x48c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffc"

    const/16 v30, 0x48d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffd"

    const/16 v30, 0x48e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffe"

    const/16 v30, 0x48f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udfff"

    const/16 v30, 0x490

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\u200d\u2642"

    const/16 v30, 0x491

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x492

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x493

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x494

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x495

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udddc\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x496

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\u200d\u2640"

    const/16 v30, 0x497

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x498

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x499

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x49a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x49b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x49c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda"

    const/16 v30, 0x49d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffb"

    const/16 v30, 0x49e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffc"

    const/16 v30, 0x49f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffd"

    const/16 v30, 0x4a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffe"

    const/16 v30, 0x4a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udfff"

    const/16 v30, 0x4a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\u200d\u2642"

    const/16 v30, 0x4a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x4a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x4a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x4a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x4a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddda\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x4a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7c"

    const/16 v30, 0x4a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7c\ud83c\udffb"

    const/16 v30, 0x4aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7c\ud83c\udffc"

    const/16 v30, 0x4ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7c\ud83c\udffd"

    const/16 v30, 0x4ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7c\ud83c\udffe"

    const/16 v30, 0x4ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc7c\ud83c\udfff"

    const/16 v30, 0x4ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd30"

    const/16 v30, 0x4af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd30\ud83c\udffb"

    const/16 v30, 0x4b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd30\ud83c\udffc"

    const/16 v30, 0x4b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd30\ud83c\udffd"

    const/16 v30, 0x4b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd30\ud83c\udffe"

    const/16 v30, 0x4b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd30\ud83c\udfff"

    const/16 v30, 0x4b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec4"

    const/16 v30, 0x4b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec4\ud83c\udffb"

    const/16 v30, 0x4b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec4\ud83c\udffc"

    const/16 v30, 0x4b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec4\ud83c\udffd"

    const/16 v30, 0x4b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec4\ud83c\udffe"

    const/16 v30, 0x4b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec4\ud83c\udfff"

    const/16 v30, 0x4ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec3"

    const/16 v30, 0x4bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec3\ud83c\udffb"

    const/16 v30, 0x4bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec3\ud83c\udffc"

    const/16 v30, 0x4bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec3\ud83c\udffd"

    const/16 v30, 0x4be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec3\ud83c\udffe"

    const/16 v30, 0x4bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udec3\ud83c\udfff"

    const/16 v30, 0x4c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd31"

    const/16 v30, 0x4c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd31\ud83c\udffb"

    const/16 v30, 0x4c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd31\ud83c\udffc"

    const/16 v30, 0x4c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd31\ud83c\udffd"

    const/16 v30, 0x4c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd31\ud83c\udffe"

    const/16 v30, 0x4c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd31\ud83c\udfff"

    const/16 v30, 0x4c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83c\udf7c"

    const/16 v30, 0x4c7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf7c"

    const/16 v30, 0x4c8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf7c"

    const/16 v30, 0x4c9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf7c"

    const/16 v30, 0x4ca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf7c"

    const/16 v30, 0x4cb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf7c"

    const/16 v30, 0x4cc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83c\udf7c"

    const/16 v30, 0x4cd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf7c"

    const/16 v30, 0x4ce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf7c"

    const/16 v30, 0x4cf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf7c"

    const/16 v30, 0x4d0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf7c"

    const/16 v30, 0x4d1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf7c"

    const/16 v30, 0x4d2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83c\udf7c"

    const/16 v30, 0x4d3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf7c"

    const/16 v30, 0x4d4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf7c"

    const/16 v30, 0x4d5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf7c"

    const/16 v30, 0x4d6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf7c"

    const/16 v30, 0x4d7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf7c"

    const/16 v30, 0x4d8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\u200d\u2640"

    const/16 v30, 0x4d9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x4da

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x4db

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x4dc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x4dd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x4de

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47"

    const/16 v30, 0x4df

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffb"

    const/16 v30, 0x4e0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffc"

    const/16 v30, 0x4e1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffd"

    const/16 v30, 0x4e2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffe"

    const/16 v30, 0x4e3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udfff"

    const/16 v30, 0x4e4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\u200d\u2642"

    const/16 v30, 0x4e5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x4e6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x4e7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x4e8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x4e9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude47\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x4ea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\u200d\u2640"

    const/16 v30, 0x4eb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x4ec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x4ed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x4ee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x4ef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x4f0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81"

    const/16 v30, 0x4f1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffb"

    const/16 v30, 0x4f2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffc"

    const/16 v30, 0x4f3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffd"

    const/16 v30, 0x4f4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffe"

    const/16 v30, 0x4f5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udfff"

    const/16 v30, 0x4f6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\u200d\u2642"

    const/16 v30, 0x4f7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x4f8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x4f9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x4fa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x4fb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc81\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x4fc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\u200d\u2640"

    const/16 v30, 0x4fd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x4fe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x4ff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x500

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x501

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x502

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45"

    const/16 v30, 0x503

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffb"

    const/16 v30, 0x504

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffc"

    const/16 v30, 0x505

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffd"

    const/16 v30, 0x506

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffe"

    const/16 v30, 0x507

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udfff"

    const/16 v30, 0x508

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\u200d\u2642"

    const/16 v30, 0x509

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x50a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x50b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x50c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x50d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude45\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x50e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\u200d\u2640"

    const/16 v30, 0x50f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x510

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x511

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x512

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x513

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x514

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46"

    const/16 v30, 0x515

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffb"

    const/16 v30, 0x516

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffc"

    const/16 v30, 0x517

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffd"

    const/16 v30, 0x518

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffe"

    const/16 v30, 0x519

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udfff"

    const/16 v30, 0x51a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\u200d\u2642"

    const/16 v30, 0x51b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x51c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x51d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x51e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x51f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude46\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x520

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\u200d\u2640"

    const/16 v30, 0x521

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x522

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x523

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x524

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x525

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x526

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b"

    const/16 v30, 0x527

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffb"

    const/16 v30, 0x528

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffc"

    const/16 v30, 0x529

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffd"

    const/16 v30, 0x52a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffe"

    const/16 v30, 0x52b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udfff"

    const/16 v30, 0x52c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\u200d\u2642"

    const/16 v30, 0x52d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x52e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x52f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x530

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x531

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4b\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x532

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\u200d\u2640"

    const/16 v30, 0x533

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x534

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x535

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x536

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x537

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x538

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf"

    const/16 v30, 0x539

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffb"

    const/16 v30, 0x53a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffc"

    const/16 v30, 0x53b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffd"

    const/16 v30, 0x53c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffe"

    const/16 v30, 0x53d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udfff"

    const/16 v30, 0x53e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\u200d\u2642"

    const/16 v30, 0x53f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x540

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x541

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x542

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x543

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcf\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x544

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\u200d\u2640"

    const/16 v30, 0x545

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x546

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x547

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x548

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x549

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x54a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26"

    const/16 v30, 0x54b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffb"

    const/16 v30, 0x54c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffc"

    const/16 v30, 0x54d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffd"

    const/16 v30, 0x54e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffe"

    const/16 v30, 0x54f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udfff"

    const/16 v30, 0x550

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\u200d\u2642"

    const/16 v30, 0x551

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x552

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x553

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x554

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x555

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd26\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x556

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\u200d\u2640"

    const/16 v30, 0x557

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x558

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x559

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x55a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x55b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x55c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37"

    const/16 v30, 0x55d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffb"

    const/16 v30, 0x55e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffc"

    const/16 v30, 0x55f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffd"

    const/16 v30, 0x560

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffe"

    const/16 v30, 0x561

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udfff"

    const/16 v30, 0x562

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\u200d\u2642"

    const/16 v30, 0x563

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x564

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x565

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x566

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x567

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd37\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x568

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\u200d\u2640"

    const/16 v30, 0x569

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x56a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x56b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x56c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x56d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x56e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e"

    const/16 v30, 0x56f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffb"

    const/16 v30, 0x570

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffc"

    const/16 v30, 0x571

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffd"

    const/16 v30, 0x572

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffe"

    const/16 v30, 0x573

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udfff"

    const/16 v30, 0x574

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\u200d\u2642"

    const/16 v30, 0x575

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x576

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x577

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x578

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x579

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4e\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x57a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\u200d\u2640"

    const/16 v30, 0x57b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x57c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x57d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x57e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x57f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x580

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d"

    const/16 v30, 0x581

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffb"

    const/16 v30, 0x582

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffc"

    const/16 v30, 0x583

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffd"

    const/16 v30, 0x584

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffe"

    const/16 v30, 0x585

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udfff"

    const/16 v30, 0x586

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\u200d\u2642"

    const/16 v30, 0x587

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x588

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x589

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x58a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x58b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4d\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x58c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\u200d\u2640"

    const/16 v30, 0x58d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x58e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x58f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x590

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x591

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x592

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87"

    const/16 v30, 0x593    # 2.0E-42f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffb"

    const/16 v30, 0x594

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffc"

    const/16 v30, 0x595

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffd"

    const/16 v30, 0x596

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffe"

    const/16 v30, 0x597

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udfff"

    const/16 v30, 0x598

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\u200d\u2642"

    const/16 v30, 0x599

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x59a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x59b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x59c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x59d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc87\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x59e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\u200d\u2640"

    const/16 v30, 0x59f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x5a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x5a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x5a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x5a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x5a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86"

    const/16 v30, 0x5a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffb"

    const/16 v30, 0x5a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffc"

    const/16 v30, 0x5a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffd"

    const/16 v30, 0x5a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffe"

    const/16 v30, 0x5a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udfff"

    const/16 v30, 0x5aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\u200d\u2642"

    const/16 v30, 0x5ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x5ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x5ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x5ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x5af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc86\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x5b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\u200d\u2640"

    const/16 v30, 0x5b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x5b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x5b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x5b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x5b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x5b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6"

    const/16 v30, 0x5b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffb"

    const/16 v30, 0x5b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffc"

    const/16 v30, 0x5b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffd"

    const/16 v30, 0x5ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffe"

    const/16 v30, 0x5bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udfff"

    const/16 v30, 0x5bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\u200d\u2642"

    const/16 v30, 0x5bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x5be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x5bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x5c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x5c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd6\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x5c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc85"

    const/16 v30, 0x5c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc85\ud83c\udffb"

    const/16 v30, 0x5c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc85\ud83c\udffc"

    const/16 v30, 0x5c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc85\ud83c\udffd"

    const/16 v30, 0x5c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc85\ud83c\udffe"

    const/16 v30, 0x5c7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc85\ud83c\udfff"

    const/16 v30, 0x5c8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd33"

    const/16 v30, 0x5c9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd33\ud83c\udffb"

    const/16 v30, 0x5ca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd33\ud83c\udffc"

    const/16 v30, 0x5cb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd33\ud83c\udffd"

    const/16 v30, 0x5cc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd33\ud83c\udffe"

    const/16 v30, 0x5cd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd33\ud83c\udfff"

    const/16 v30, 0x5ce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc83"

    const/16 v30, 0x5cf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc83\ud83c\udffb"

    const/16 v30, 0x5d0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc83\ud83c\udffc"

    const/16 v30, 0x5d1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc83\ud83c\udffd"

    const/16 v30, 0x5d2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc83\ud83c\udffe"

    const/16 v30, 0x5d3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc83\ud83c\udfff"

    const/16 v30, 0x5d4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd7a"

    const/16 v30, 0x5d5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd7a\ud83c\udffb"

    const/16 v30, 0x5d6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd7a\ud83c\udffc"

    const/16 v30, 0x5d7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd7a\ud83c\udffd"

    const/16 v30, 0x5d8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd7a\ud83c\udffe"

    const/16 v30, 0x5d9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd7a\ud83c\udfff"

    const/16 v30, 0x5da

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6f\u200d\u2640"

    const/16 v30, 0x5db

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6f"

    const/16 v30, 0x5dc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6f\u200d\u2642"

    const/16 v30, 0x5dd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd74"

    const/16 v30, 0x5de

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd74\ud83c\udffb"

    const/16 v30, 0x5df

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd74\ud83c\udffc"

    const/16 v30, 0x5e0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd74\ud83c\udffd"

    const/16 v30, 0x5e1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd74\ud83c\udffe"

    const/16 v30, 0x5e2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd74\ud83c\udfff"

    const/16 v30, 0x5e3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddbd"

    const/16 v30, 0x5e4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddbd"

    const/16 v30, 0x5e5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddbd"

    const/16 v30, 0x5e6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddbd"

    const/16 v30, 0x5e7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddbd"

    const/16 v30, 0x5e8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddbd"

    const/16 v30, 0x5e9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddbd"

    const/16 v30, 0x5ea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddbd"

    const/16 v30, 0x5eb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddbd"

    const/16 v30, 0x5ec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddbd"

    const/16 v30, 0x5ed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddbd"

    const/16 v30, 0x5ee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddbd"

    const/16 v30, 0x5ef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddbd"

    const/16 v30, 0x5f0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddbd"

    const/16 v30, 0x5f1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddbd"

    const/16 v30, 0x5f2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddbd"

    const/16 v30, 0x5f3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddbd"

    const/16 v30, 0x5f4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddbd"

    const/16 v30, 0x5f5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddbc"

    const/16 v30, 0x5f6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddbc"

    const/16 v30, 0x5f7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddbc"

    const/16 v30, 0x5f8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddbc"

    const/16 v30, 0x5f9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddbc"

    const/16 v30, 0x5fa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddbc"

    const/16 v30, 0x5fb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddbc"

    const/16 v30, 0x5fc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddbc"

    const/16 v30, 0x5fd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddbc"

    const/16 v30, 0x5fe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddbc"

    const/16 v30, 0x5ff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddbc"

    const/16 v30, 0x600

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddbc"

    const/16 v30, 0x601

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddbc"

    const/16 v30, 0x602

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddbc"

    const/16 v30, 0x603

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddbc"

    const/16 v30, 0x604

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddbc"

    const/16 v30, 0x605

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddbc"

    const/16 v30, 0x606

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddbc"

    const/16 v30, 0x607

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\u200d\u2640"

    const/16 v30, 0x608

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x609

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x60a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x60b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x60c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x60d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6"

    const/16 v30, 0x60e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffb"

    const/16 v30, 0x60f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffc"

    const/16 v30, 0x610

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffd"

    const/16 v30, 0x611

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffe"

    const/16 v30, 0x612

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udfff"

    const/16 v30, 0x613

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\u200d\u2642"

    const/16 v30, 0x614

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x615

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x616

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x617

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x618

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb6\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x619

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83e\uddaf"

    const/16 v30, 0x61a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddaf"

    const/16 v30, 0x61b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddaf"

    const/16 v30, 0x61c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddaf"

    const/16 v30, 0x61d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddaf"

    const/16 v30, 0x61e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddaf"

    const/16 v30, 0x61f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\u200d\ud83e\uddaf"

    const/16 v30, 0x620

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddaf"

    const/16 v30, 0x621

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddaf"

    const/16 v30, 0x622

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddaf"

    const/16 v30, 0x623

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddaf"

    const/16 v30, 0x624

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddaf"

    const/16 v30, 0x625

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83e\uddaf"

    const/16 v30, 0x626

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddaf"

    const/16 v30, 0x627

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddaf"

    const/16 v30, 0x628

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddaf"

    const/16 v30, 0x629

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddaf"

    const/16 v30, 0x62a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddaf"

    const/16 v30, 0x62b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\u200d\u2640"

    const/16 v30, 0x62c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x62d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x62e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x62f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x630

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x631

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce"

    const/16 v30, 0x632

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffb"

    const/16 v30, 0x633

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffc"

    const/16 v30, 0x634

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffd"

    const/16 v30, 0x635

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffe"

    const/16 v30, 0x636

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udfff"

    const/16 v30, 0x637

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\u200d\u2642"

    const/16 v30, 0x638

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x639

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x63a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x63b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x63c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddce\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x63d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\u200d\u2640"

    const/16 v30, 0x63e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x63f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x640

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x641

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x642

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x643

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3"

    const/16 v30, 0x644

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffb"

    const/16 v30, 0x645

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffc"

    const/16 v30, 0x646

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffd"

    const/16 v30, 0x647

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffe"

    const/16 v30, 0x648

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udfff"

    const/16 v30, 0x649

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\u200d\u2642"

    const/16 v30, 0x64a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x64b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x64c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x64d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x64e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc3\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x64f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\u200d\u2640"

    const/16 v30, 0x650

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x651

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x652

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x653

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x654

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x655

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd"

    const/16 v30, 0x656

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffb"

    const/16 v30, 0x657

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffc"

    const/16 v30, 0x658

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffd"

    const/16 v30, 0x659

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffe"

    const/16 v30, 0x65a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udfff"

    const/16 v30, 0x65b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\u200d\u2642"

    const/16 v30, 0x65c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x65d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x65e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x65f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x660

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddcd\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x661

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6b"

    const/16 v30, 0x662

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6b\ud83c\udffb"

    const/16 v30, 0x663

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x664

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x665

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x666

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x667

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x668

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6b\ud83c\udffc"

    const/16 v30, 0x669

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x66a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x66b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x66c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x66d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x66e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6b\ud83c\udffd"

    const/16 v30, 0x66f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x670

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x671

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x672

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x673

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x674

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6b\ud83c\udffe"

    const/16 v30, 0x675

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x676

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x677

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x678

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x679

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x67a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6b\ud83c\udfff"

    const/16 v30, 0x67b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6d"

    const/16 v30, 0x67c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6d\ud83c\udffb"

    const/16 v30, 0x67d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x67e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x67f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x680

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x681

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x682

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6d\ud83c\udffc"

    const/16 v30, 0x683

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x684

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x685

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x686

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x687

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x688

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6d\ud83c\udffd"

    const/16 v30, 0x689

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x68a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x68b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x68c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x68d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x68e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6d\ud83c\udffe"

    const/16 v30, 0x68f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x690

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x691

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x692

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x693

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x694

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6d\ud83c\udfff"

    const/16 v30, 0x695

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6c"

    const/16 v30, 0x696

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6c\ud83c\udffb"

    const/16 v30, 0x697

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x698

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x699

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x69a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x69b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x69c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6c\ud83c\udffc"

    const/16 v30, 0x69d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x69e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x69f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6c\ud83c\udffd"

    const/16 v30, 0x6a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6c\ud83c\udffe"

    const/16 v30, 0x6a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc6c\ud83c\udfff"

    const/16 v30, 0x6af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc68"

    const/16 v30, 0x6b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x6c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x6c7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x6c8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x6c9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    const/16 v30, 0x6ca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x6cb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x6cc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x6cd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x6ce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x6cf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x6d0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x6d1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x6d2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x6d3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x6d4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x6d5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x6d6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x6d7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x6d8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x6d9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x6da

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x6db

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x6dc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x6dd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x6de

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x6df

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x6e0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x6e1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x6e2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x6e3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc91"

    const/16 v30, 0x6e4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x6e5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x6e6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x6e7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x6e8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x6e9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x6ea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x6eb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x6ec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x6ed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x6ee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x6ef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x6f0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x6f1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x6f2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x6f3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x6f4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x6f5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x6f6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x6f7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x6f8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x6f9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x6fa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x6fb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x6fc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x6fd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc68"

    const/16 v30, 0x6fe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x6ff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x700

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x701

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x702

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x703

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x704

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x705

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x706

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x707

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x708

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x709

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x70a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x70b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x70c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x70d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x70e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x70f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x710

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x711

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x712

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x713

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x714

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x715

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x716

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x717

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    const/16 v30, 0x718

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x719

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x71a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x71b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x71c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x71d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x71e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x71f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x720

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x721

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x722

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x723

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x724

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x725

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x726

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x727

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x728

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x729

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x72a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x72b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x72c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x72d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x72e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x72f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x730

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x731

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69"

    const/16 v30, 0x732

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x733

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x734

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x735

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x736

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x737

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x738

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x739

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x73a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x73b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x73c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x73d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x73e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x73f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x740

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x741

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x742

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x743

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x744

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x745

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x746

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v30, 0x747

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v30, 0x748

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x749

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v30, 0x74a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v30, 0x74b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc8f"

    const/16 v30, 0x74c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x74d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x74e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x74f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x750

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x751

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x752

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x753

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x754

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x755

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x756

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x757

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x758

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x759

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x75a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x75b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x75c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x75d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x75e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x75f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x760

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v30, 0x761

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x762

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v30, 0x763

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v30, 0x764

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd1\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v30, 0x765

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    const/16 v30, 0x766

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x767

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x768

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x769

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x76a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffb\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x76b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x76c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x76d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x76e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x76f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffc\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x770

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x771

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x772

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x773

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x774

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffd\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x775

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x776

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x777

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x778

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x779

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udffe\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x77a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v30, 0x77b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v30, 0x77c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x77d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v30, 0x77e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\ud83c\udfff\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v30, 0x77f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66"

    const/16 v30, 0x780

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67"

    const/16 v30, 0x781

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v30, 0x782

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    const/16 v30, 0x783

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    const/16 v30, 0x784

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66"

    const/16 v30, 0x785

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67"

    const/16 v30, 0x786

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v30, 0x787

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    const/16 v30, 0x788

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    const/16 v30, 0x789

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66"

    const/16 v30, 0x78a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67"

    const/16 v30, 0x78b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v30, 0x78c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    const/16 v30, 0x78d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    const/16 v30, 0x78e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc66"

    const/16 v30, 0x78f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc67"

    const/16 v30, 0x790

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v30, 0x791

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    const/16 v30, 0x792

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    const/16 v30, 0x793

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc66"

    const/16 v30, 0x794

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc67"

    const/16 v30, 0x795

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    const/16 v30, 0x796

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    const/16 v30, 0x797

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    const/16 v30, 0x798

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea2"

    const/16 v30, 0x799

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf6"

    const/16 v30, 0x79a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf5"

    const/16 v30, 0x79b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea1"

    const/16 v30, 0x79c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde5"

    const/16 v30, 0x79d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd7c"

    const/16 v30, 0x79e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddba"

    const/16 v30, 0x79f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc5a"

    const/16 v30, 0x7a0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc55"

    const/16 v30, 0x7a1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc56"

    const/16 v30, 0x7a2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude72"

    const/16 v30, 0x7a3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude73"

    const/16 v30, 0x7a4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc54"

    const/16 v30, 0x7a5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc57"

    const/16 v30, 0x7a6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc59"

    const/16 v30, 0x7a7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude71"

    const/16 v30, 0x7a8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc58"

    const/16 v30, 0x7a9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd7b"

    const/16 v30, 0x7aa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude74"

    const/16 v30, 0x7ab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd7f"

    const/16 v30, 0x7ac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc60"

    const/16 v30, 0x7ad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc61"

    const/16 v30, 0x7ae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc62"

    const/16 v30, 0x7af

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc5e"

    const/16 v30, 0x7b0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc5f"

    const/16 v30, 0x7b1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd7e"

    const/16 v30, 0x7b2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde6"

    const/16 v30, 0x7b3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde4"

    const/16 v30, 0x7b4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde3"

    const/16 v30, 0x7b5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa9"

    const/16 v30, 0x7b6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde2"

    const/16 v30, 0x7b7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc52"

    const/16 v30, 0x7b8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf93"

    const/16 v30, 0x7b9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26d1"

    const/16 v30, 0x7ba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude96"

    const/16 v30, 0x7bb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc51"

    const/16 v30, 0x7bc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc8d"

    const/16 v30, 0x7bd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc5d"

    const/16 v30, 0x7be

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc5b"

    const/16 v30, 0x7bf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc5c"

    const/16 v30, 0x7c0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcbc"

    const/16 v30, 0x7c1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf92"

    const/16 v30, 0x7c2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf3"

    const/16 v30, 0x7c3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc53"

    const/16 v30, 0x7c4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd76"

    const/16 v30, 0x7c5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd7d"

    const/16 v30, 0x7c6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf02"

    const/16 v30, 0x7c7

    aput-object v29, v5, v30

    aput-object v5, v4, v27

    const/16 v5, 0xd6

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v29, "\ud83d\udc36"

    aput-object v29, v5, v27

    const-string/jumbo v29, "\ud83d\udc31"

    aput-object v29, v5, v6

    const-string/jumbo v29, "\ud83d\udc2d"

    aput-object v29, v5, v28

    const-string/jumbo v29, "\ud83d\udc39"

    aput-object v29, v5, v7

    const-string/jumbo v29, "\ud83d\udc30"

    aput-object v29, v5, v8

    const-string/jumbo v29, "\ud83e\udd8a"

    aput-object v29, v5, v9

    const-string/jumbo v29, "\ud83d\udc3b"

    aput-object v29, v5, v10

    const-string/jumbo v29, "\ud83d\udc3c"

    aput-object v29, v5, v11

    const-string/jumbo v29, "\ud83d\udc3b\u200d\u2744"

    aput-object v29, v5, v12

    const-string/jumbo v29, "\ud83d\udc28"

    const/16 v30, 0x9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc2f"

    const/16 v30, 0xa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd81"

    const/16 v30, 0xb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc2e"

    const/16 v30, 0xc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc37"

    const/16 v30, 0xd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc3d"

    const/16 v30, 0xe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc38"

    const/16 v30, 0xf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc35"

    const/16 v30, 0x10

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude48"

    const/16 v30, 0x11

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude49"

    const/16 v30, 0x12

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\ude4a"

    const/16 v30, 0x13

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc12"

    const/16 v30, 0x14

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc14"

    const/16 v30, 0x15

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc27"

    const/16 v30, 0x16

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc26"

    const/16 v30, 0x17

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc24"

    const/16 v30, 0x18

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc23"

    const/16 v30, 0x19

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc25"

    const/16 v30, 0x1a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udebf"

    const/16 v30, 0x1b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd86"

    const/16 v30, 0x1c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc26\u200d\u2b1b"

    const/16 v30, 0x1d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd85"

    const/16 v30, 0x1e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd89"

    const/16 v30, 0x1f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd87"

    const/16 v30, 0x20

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc3a"

    const/16 v30, 0x21

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc17"

    const/16 v30, 0x22

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc34"

    aput-object v29, v5, v14

    const-string/jumbo v29, "\ud83e\udd84"

    const/16 v30, 0x24

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udece"

    const/16 v30, 0x25

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc1d"

    const/16 v30, 0x26

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb1"

    const/16 v30, 0x27

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc1b"

    const/16 v30, 0x28

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd8b"

    const/16 v30, 0x29

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc0c"

    aput-object v29, v5, v15

    const-string/jumbo v29, "\ud83d\udc1e"

    const/16 v30, 0x2b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc1c"

    const/16 v30, 0x2c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb0"

    const/16 v30, 0x2d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb2"

    const/16 v30, 0x2e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb3"

    const/16 v30, 0x2f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd9f"

    aput-object v29, v5, v16

    const-string/jumbo v29, "\ud83e\udd97"

    aput-object v29, v5, v17

    const-string/jumbo v29, "\ud83d\udd77"

    aput-object v29, v5, v18

    const-string/jumbo v29, "\ud83d\udd78"

    aput-object v29, v5, v19

    const-string/jumbo v29, "\ud83e\udd82"

    aput-object v29, v5, v20

    const-string/jumbo v29, "\ud83d\udc22"

    aput-object v29, v5, v21

    const-string/jumbo v29, "\ud83d\udc0d"

    aput-object v29, v5, v22

    const-string/jumbo v29, "\ud83e\udd8e"

    aput-object v29, v5, v23

    const-string/jumbo v29, "\ud83e\udd96"

    aput-object v29, v5, v24

    const-string/jumbo v29, "\ud83e\udd95"

    aput-object v29, v5, v25

    const-string/jumbo v29, "\ud83d\udc19"

    const/16 v30, 0x3a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd91"

    const/16 v30, 0x3b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udebc"

    const/16 v30, 0x3c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd90"

    const/16 v30, 0x3d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd9e"

    const/16 v30, 0x3e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd80"

    const/16 v30, 0x3f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc21"

    const/16 v30, 0x40

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc20"

    const/16 v30, 0x41

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc1f"

    const/16 v30, 0x42

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc2c"

    const/16 v30, 0x43

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc33"

    const/16 v30, 0x44

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc0b"

    const/16 v30, 0x45

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd88"

    const/16 v30, 0x46

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddad"

    const/16 v30, 0x47

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc0a"

    const/16 v30, 0x48

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc05"

    const/16 v30, 0x49

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc06"

    const/16 v30, 0x4a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd93"

    const/16 v30, 0x4b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd8d"

    const/16 v30, 0x4c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda7"

    const/16 v30, 0x4d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda3"

    const/16 v30, 0x4e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc18"

    const/16 v30, 0x4f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd9b"

    const/16 v30, 0x50

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd8f"

    const/16 v30, 0x51

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc2a"

    const/16 v30, 0x52

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc2b"

    const/16 v30, 0x53

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd92"

    const/16 v30, 0x54

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd98"

    const/16 v30, 0x55

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddac"

    const/16 v30, 0x56

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc03"

    const/16 v30, 0x57

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc02"

    const/16 v30, 0x58

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc04"

    const/16 v30, 0x59

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udecf"

    const/16 v30, 0x5a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc0e"

    const/16 v30, 0x5b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc16"

    const/16 v30, 0x5c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc0f"

    const/16 v30, 0x5d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc11"

    const/16 v30, 0x5e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd99"

    const/16 v30, 0x5f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc10"

    const/16 v30, 0x60

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd8c"

    const/16 v30, 0x61

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc15"

    const/16 v30, 0x62

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc29"

    const/16 v30, 0x63

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddae"

    const/16 v30, 0x64

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc15\u200d\ud83e\uddba"

    const/16 v30, 0x65

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc08"

    const/16 v30, 0x66

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc08\u200d\u2b1b"

    const/16 v30, 0x67

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb6"

    const/16 v30, 0x68

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udebd"

    const/16 v30, 0x69

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc13"

    const/16 v30, 0x6a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd83"

    const/16 v30, 0x6b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda4"

    const/16 v30, 0x6c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd9a"

    const/16 v30, 0x6d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd9c"

    const/16 v30, 0x6e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda2"

    const/16 v30, 0x6f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda9"

    const/16 v30, 0x70

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd4a"

    const/16 v30, 0x71

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc07"

    const/16 v30, 0x72

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd9d"

    aput-object v29, v5, v26

    const-string/jumbo v29, "\ud83e\udda8"

    const/16 v30, 0x74

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda1"

    const/16 v30, 0x75

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddab"

    const/16 v30, 0x76

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda6"

    const/16 v30, 0x77

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda5"

    const/16 v30, 0x78

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc01"

    const/16 v30, 0x79

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc00"

    const/16 v30, 0x7a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc3f"

    const/16 v30, 0x7b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd94"

    const/16 v30, 0x7c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc3e"

    const/16 v30, 0x7d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc09"

    const/16 v30, 0x7e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc32"

    const/16 v30, 0x7f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc26\u200d\ud83d\udd25"

    const/16 v30, 0x80

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf35"

    const/16 v30, 0x81

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf84"

    const/16 v30, 0x82

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf32"

    const/16 v30, 0x83

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf33"

    const/16 v30, 0x84

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf34"

    const/16 v30, 0x85

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udebe"

    const/16 v30, 0x86

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb5"

    const/16 v30, 0x87

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf31"

    const/16 v30, 0x88

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf3f"

    const/16 v30, 0x89

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2618"

    const/16 v30, 0x8a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf40"

    const/16 v30, 0x8b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf8d"

    const/16 v30, 0x8c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb4"

    const/16 v30, 0x8d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf8b"

    const/16 v30, 0x8e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf43"

    const/16 v30, 0x8f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf42"

    const/16 v30, 0x90

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf41"

    const/16 v30, 0x91

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeba"

    const/16 v30, 0x92

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb9"

    const/16 v30, 0x93

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf44"

    const/16 v30, 0x94

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf44\u200d\ud83d\udfeb"

    const/16 v30, 0x95

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc1a"

    const/16 v30, 0x96

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb8"

    const/16 v30, 0x97

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea8"

    const/16 v30, 0x98

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf3e"

    const/16 v30, 0x99

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc90"

    const/16 v30, 0x9a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf37"

    const/16 v30, 0x9b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf39"

    const/16 v30, 0x9c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd40"

    const/16 v30, 0x9d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udebb"

    const/16 v30, 0x9e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeb7"

    const/16 v30, 0x9f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf3a"

    const/16 v30, 0xa0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf38"

    const/16 v30, 0xa1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf3c"

    const/16 v30, 0xa2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf3b"

    const/16 v30, 0xa3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf1e"

    const/16 v30, 0xa4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf1d"

    const/16 v30, 0xa5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf1b"

    const/16 v30, 0xa6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf1c"

    const/16 v30, 0xa7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf1a"

    const/16 v30, 0xa8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf15"

    const/16 v30, 0xa9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf16"

    const/16 v30, 0xaa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf17"

    const/16 v30, 0xab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf18"

    const/16 v30, 0xac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf11"

    const/16 v30, 0xad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf12"

    const/16 v30, 0xae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf13"

    const/16 v30, 0xaf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf14"

    const/16 v30, 0xb0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf19"

    const/16 v30, 0xb1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf0e"

    const/16 v30, 0xb2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf0d"

    const/16 v30, 0xb3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf0f"

    const/16 v30, 0xb4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude90"

    const/16 v30, 0xb5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcab"

    const/16 v30, 0xb6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b50"

    const/16 v30, 0xb7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf1f"

    const/16 v30, 0xb8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2728"

    const/16 v30, 0xb9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26a1"

    const/16 v30, 0xba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2604"

    const/16 v30, 0xbb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca5"

    const/16 v30, 0xbc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd25"

    const/16 v30, 0xbd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf2a"

    const/16 v30, 0xbe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf08"

    const/16 v30, 0xbf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2600"

    const/16 v30, 0xc0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf24"

    const/16 v30, 0xc1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26c5"

    const/16 v30, 0xc2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf25"

    const/16 v30, 0xc3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2601"

    const/16 v30, 0xc4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf26"

    const/16 v30, 0xc5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf27"

    const/16 v30, 0xc6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26c8"

    const/16 v30, 0xc7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf29"

    const/16 v30, 0xc8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf28"

    const/16 v30, 0xc9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2744"

    const/16 v30, 0xca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2603"

    const/16 v30, 0xcb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26c4"

    const/16 v30, 0xcc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf2c"

    const/16 v30, 0xcd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca8"

    const/16 v30, 0xce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca7"

    const/16 v30, 0xcf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca6"

    const/16 v30, 0xd0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udee7"

    const/16 v30, 0xd1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2614"

    const/16 v30, 0xd2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2602"

    const/16 v30, 0xd3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf0a"

    const/16 v30, 0xd4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf2b"

    const/16 v30, 0xd5

    aput-object v29, v5, v30

    aput-object v5, v4, v6

    const-string/jumbo v159, "\ud83e\udd62"

    const-string/jumbo v160, "\ud83e\uddc2"

    const-string/jumbo v31, "\ud83c\udf4f"

    const-string/jumbo v32, "\ud83c\udf4e"

    const-string/jumbo v33, "\ud83c\udf50"

    const-string/jumbo v34, "\ud83c\udf4a"

    const-string/jumbo v35, "\ud83c\udf4b"

    const-string/jumbo v36, "\ud83c\udf4b\u200d\ud83d\udfe9"

    const-string/jumbo v37, "\ud83c\udf4c"

    const-string/jumbo v38, "\ud83c\udf49"

    const-string/jumbo v39, "\ud83c\udf47"

    const-string/jumbo v40, "\ud83c\udf53"

    const-string/jumbo v41, "\ud83e\uded0"

    const-string/jumbo v42, "\ud83c\udf48"

    const-string/jumbo v43, "\ud83c\udf52"

    const-string/jumbo v44, "\ud83c\udf51"

    const-string/jumbo v45, "\ud83e\udd6d"

    const-string/jumbo v46, "\ud83c\udf4d"

    const-string/jumbo v47, "\ud83e\udd65"

    const-string/jumbo v48, "\ud83e\udd5d"

    const-string/jumbo v49, "\ud83c\udf45"

    const-string/jumbo v50, "\ud83c\udf46"

    const-string/jumbo v51, "\ud83e\udd51"

    const-string/jumbo v52, "\ud83e\udedb"

    const-string/jumbo v53, "\ud83e\udd66"

    const-string/jumbo v54, "\ud83e\udd6c"

    const-string/jumbo v55, "\ud83e\udd52"

    const-string/jumbo v56, "\ud83c\udf36"

    const-string/jumbo v57, "\ud83e\uded1"

    const-string/jumbo v58, "\ud83c\udf3d"

    const-string/jumbo v59, "\ud83e\udd55"

    const-string/jumbo v60, "\ud83e\uded2"

    const-string/jumbo v61, "\ud83e\uddc4"

    const-string/jumbo v62, "\ud83e\uddc5"

    const-string/jumbo v63, "\ud83e\udd54"

    const-string/jumbo v64, "\ud83e\udedc"

    const-string/jumbo v65, "\ud83c\udf60"

    const-string/jumbo v66, "\ud83e\udeda"

    const-string/jumbo v67, "\ud83e\udd50"

    const-string/jumbo v68, "\ud83e\udd6f"

    const-string/jumbo v69, "\ud83c\udf5e"

    const-string/jumbo v70, "\ud83e\udd56"

    const-string/jumbo v71, "\ud83e\udd68"

    const-string/jumbo v72, "\ud83e\uddc0"

    const-string/jumbo v73, "\ud83e\udd5a"

    const-string/jumbo v74, "\ud83c\udf73"

    const-string/jumbo v75, "\ud83e\uddc8"

    const-string/jumbo v76, "\ud83e\udd5e"

    const-string/jumbo v77, "\ud83e\uddc7"

    const-string/jumbo v78, "\ud83e\udd53"

    const-string/jumbo v79, "\ud83e\udd69"

    const-string/jumbo v80, "\ud83c\udf57"

    const-string/jumbo v81, "\ud83c\udf56"

    const-string/jumbo v82, "\ud83e\uddb4"

    const-string/jumbo v83, "\ud83c\udf2d"

    const-string/jumbo v84, "\ud83c\udf54"

    const-string/jumbo v85, "\ud83c\udf5f"

    const-string/jumbo v86, "\ud83c\udf55"

    const-string/jumbo v87, "\ud83e\uded3"

    const-string/jumbo v88, "\ud83e\udd6a"

    const-string/jumbo v89, "\ud83e\udd59"

    const-string/jumbo v90, "\ud83e\uddc6"

    const-string/jumbo v91, "\ud83c\udf2e"

    const-string/jumbo v92, "\ud83c\udf2f"

    const-string/jumbo v93, "\ud83e\uded4"

    const-string/jumbo v94, "\ud83e\udd57"

    const-string/jumbo v95, "\ud83e\udd58"

    const-string/jumbo v96, "\ud83e\uded5"

    const-string/jumbo v97, "\ud83e\udd6b"

    const-string/jumbo v98, "\ud83e\uded9"

    const-string/jumbo v99, "\ud83c\udf5d"

    const-string/jumbo v100, "\ud83c\udf5c"

    const-string/jumbo v101, "\ud83c\udf72"

    const-string/jumbo v102, "\ud83c\udf5b"

    const-string/jumbo v103, "\ud83c\udf63"

    const-string/jumbo v104, "\ud83c\udf71"

    const-string/jumbo v105, "\ud83e\udd5f"

    const-string/jumbo v106, "\ud83e\uddaa"

    const-string/jumbo v107, "\ud83c\udf64"

    const-string/jumbo v108, "\ud83c\udf59"

    const-string/jumbo v109, "\ud83c\udf5a"

    const-string/jumbo v110, "\ud83c\udf58"

    const-string/jumbo v111, "\ud83c\udf65"

    const-string/jumbo v112, "\ud83e\udd60"

    const-string/jumbo v113, "\ud83e\udd6e"

    const-string/jumbo v114, "\ud83c\udf62"

    const-string/jumbo v115, "\ud83c\udf61"

    const-string/jumbo v116, "\ud83c\udf67"

    const-string/jumbo v117, "\ud83c\udf68"

    const-string/jumbo v118, "\ud83c\udf66"

    const-string/jumbo v119, "\ud83e\udd67"

    const-string/jumbo v120, "\ud83e\uddc1"

    const-string/jumbo v121, "\ud83c\udf70"

    const-string/jumbo v122, "\ud83c\udf82"

    const-string/jumbo v123, "\ud83c\udf6e"

    const-string/jumbo v124, "\ud83c\udf6d"

    const-string/jumbo v125, "\ud83c\udf6c"

    const-string/jumbo v126, "\ud83c\udf6b"

    const-string/jumbo v127, "\ud83c\udf7f"

    const-string/jumbo v128, "\ud83c\udf69"

    const-string/jumbo v129, "\ud83c\udf6a"

    const-string/jumbo v130, "\ud83c\udf30"

    const-string/jumbo v131, "\ud83e\udd5c"

    const-string/jumbo v132, "\ud83e\uded8"

    const-string/jumbo v133, "\ud83c\udf6f"

    const-string/jumbo v134, "\ud83e\udd5b"

    const-string/jumbo v135, "\ud83e\uded7"

    const-string/jumbo v136, "\ud83c\udf7c"

    const-string/jumbo v137, "\ud83e\uded6"

    const-string/jumbo v138, "\u2615"

    const-string/jumbo v139, "\ud83c\udf75"

    const-string/jumbo v140, "\ud83e\uddc3"

    const-string/jumbo v141, "\ud83e\udd64"

    const-string/jumbo v142, "\ud83e\uddcb"

    const-string/jumbo v143, "\ud83c\udf76"

    const-string/jumbo v144, "\ud83c\udf7a"

    const-string/jumbo v145, "\ud83c\udf7b"

    const-string/jumbo v146, "\ud83e\udd42"

    const-string/jumbo v147, "\ud83c\udf77"

    const-string/jumbo v148, "\ud83e\udd43"

    const-string/jumbo v149, "\ud83c\udf78"

    const-string/jumbo v150, "\ud83c\udf79"

    const-string/jumbo v151, "\ud83e\uddc9"

    const-string/jumbo v152, "\ud83c\udf7e"

    const-string/jumbo v153, "\ud83e\uddca"

    const-string/jumbo v154, "\ud83e\udd44"

    const-string/jumbo v155, "\ud83c\udf74"

    const-string/jumbo v156, "\ud83c\udf7d"

    const-string/jumbo v157, "\ud83e\udd63"

    const-string/jumbo v158, "\ud83e\udd61"

    filled-new-array/range {v31 .. v160}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v28

    const/16 v5, 0x151

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v29, "\u26bd"

    aput-object v29, v5, v27

    const-string/jumbo v29, "\ud83c\udfc0"

    aput-object v29, v5, v6

    const-string/jumbo v29, "\ud83c\udfc8"

    aput-object v29, v5, v28

    const-string/jumbo v29, "\u26be"

    aput-object v29, v5, v7

    const-string/jumbo v29, "\ud83e\udd4e"

    aput-object v29, v5, v8

    const-string/jumbo v29, "\ud83c\udfbe"

    aput-object v29, v5, v9

    const-string/jumbo v29, "\ud83c\udfd0"

    aput-object v29, v5, v10

    const-string/jumbo v29, "\ud83c\udfc9"

    aput-object v29, v5, v11

    const-string/jumbo v29, "\ud83e\udd4f"

    aput-object v29, v5, v12

    const-string/jumbo v29, "\ud83c\udfb1"

    const/16 v30, 0x9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude80"

    const/16 v30, 0xa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfd3"

    const/16 v30, 0xb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udff8"

    const/16 v30, 0xc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfd2"

    const/16 v30, 0xd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfd1"

    const/16 v30, 0xe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd4d"

    const/16 v30, 0xf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcf"

    const/16 v30, 0x10

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude83"

    const/16 v30, 0x11

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd45"

    const/16 v30, 0x12

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f3"

    const/16 v30, 0x13

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude81"

    const/16 v30, 0x14

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udedd"

    const/16 v30, 0x15

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udff9"

    const/16 v30, 0x16

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa3"

    const/16 v30, 0x17

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3f"

    const/16 v30, 0x18

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd4a"

    const/16 v30, 0x19

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd4b"

    const/16 v30, 0x1a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfbd"

    const/16 v30, 0x1b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udef9"

    const/16 v30, 0x1c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udefc"

    const/16 v30, 0x1d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udef7"

    const/16 v30, 0x1e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f8"

    const/16 v30, 0x1f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd4c"

    const/16 v30, 0x20

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfbf"

    const/16 v30, 0x21

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f7"

    const/16 v30, 0x22

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc2"

    aput-object v29, v5, v14

    const-string/jumbo v29, "\ud83e\ude82"

    const/16 v30, 0x24

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\u200d\u2640"

    const/16 v30, 0x25

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x26

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x27

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x28

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x29

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udfff\u200d\u2640"

    aput-object v29, v5, v15

    const-string/jumbo v29, "\ud83c\udfcb"

    const/16 v30, 0x2b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffb"

    const/16 v30, 0x2c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffc"

    const/16 v30, 0x2d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffd"

    const/16 v30, 0x2e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffe"

    const/16 v30, 0x2f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udfff"

    aput-object v29, v5, v16

    const-string/jumbo v29, "\ud83c\udfcb\u200d\u2642"

    aput-object v29, v5, v17

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffb\u200d\u2642"

    aput-object v29, v5, v18

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffc\u200d\u2642"

    aput-object v29, v5, v19

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffd\u200d\u2642"

    aput-object v29, v5, v20

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udffe\u200d\u2642"

    aput-object v29, v5, v21

    const-string/jumbo v29, "\ud83c\udfcb\ud83c\udfff\u200d\u2642"

    aput-object v29, v5, v22

    const-string/jumbo v29, "\ud83e\udd3c\u200d\u2640"

    aput-object v29, v5, v23

    const-string/jumbo v29, "\ud83e\udd3c"

    aput-object v29, v5, v24

    const-string/jumbo v29, "\ud83e\udd3c\u200d\u2642"

    aput-object v29, v5, v25

    const-string/jumbo v29, "\ud83e\udd38\u200d\u2640"

    const/16 v30, 0x3a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x3b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x3c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x3d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x3e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x3f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38"

    const/16 v30, 0x40

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffb"

    const/16 v30, 0x41

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffc"

    const/16 v30, 0x42

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffd"

    const/16 v30, 0x43

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffe"

    const/16 v30, 0x44

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udfff"

    const/16 v30, 0x45

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\u200d\u2642"

    const/16 v30, 0x46

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x47

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x48

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x49

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x4a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd38\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x4b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\u200d\u2640"

    const/16 v30, 0x4c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x4d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x4e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x4f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x50

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x51

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9"

    const/16 v30, 0x52

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffb"

    const/16 v30, 0x53

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffc"

    const/16 v30, 0x54

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffd"

    const/16 v30, 0x55

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffe"

    const/16 v30, 0x56

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udfff"

    const/16 v30, 0x57

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\u200d\u2642"

    const/16 v30, 0x58

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x59

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x5a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x5b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x5c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26f9\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x5d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3a"

    const/16 v30, 0x5e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\u200d\u2640"

    const/16 v30, 0x5f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x60

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x61

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x62

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x63

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x64

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e"

    const/16 v30, 0x65

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffb"

    const/16 v30, 0x66

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffc"

    const/16 v30, 0x67

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffd"

    const/16 v30, 0x68

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffe"

    const/16 v30, 0x69

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udfff"

    const/16 v30, 0x6a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\u200d\u2642"

    const/16 v30, 0x6b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x6c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x6d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x6e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x6f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3e\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x70

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\u200d\u2640"

    const/16 v30, 0x71

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x72

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffc\u200d\u2640"

    aput-object v29, v5, v26

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x74

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x75

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x76

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc"

    const/16 v30, 0x77

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffb"

    const/16 v30, 0x78

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffc"

    const/16 v30, 0x79

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffd"

    const/16 v30, 0x7a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffe"

    const/16 v30, 0x7b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udfff"

    const/16 v30, 0x7c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\u200d\u2642"

    const/16 v30, 0x7d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x7e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x7f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x80

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x81

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfcc\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x82

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc7"

    const/16 v30, 0x83

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc7\ud83c\udffb"

    const/16 v30, 0x84

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc7\ud83c\udffc"

    const/16 v30, 0x85

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc7\ud83c\udffd"

    const/16 v30, 0x86

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc7\ud83c\udffe"

    const/16 v30, 0x87

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc7\ud83c\udfff"

    const/16 v30, 0x88

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\u200d\u2640"

    const/16 v30, 0x89

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x8a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x8b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x8c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x8d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x8e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8"

    const/16 v30, 0x8f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffb"

    const/16 v30, 0x90

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffc"

    const/16 v30, 0x91

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffd"

    const/16 v30, 0x92

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffe"

    const/16 v30, 0x93

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udfff"

    const/16 v30, 0x94

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\u200d\u2642"

    const/16 v30, 0x95

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x96

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x97

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x98

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x99

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd8\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x9a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\u200d\u2640"

    const/16 v30, 0x9b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x9c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x9d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x9e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x9f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udfff\u200d\u2640"

    const/16 v30, 0xa0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4"

    const/16 v30, 0xa1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffb"

    const/16 v30, 0xa2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffc"

    const/16 v30, 0xa3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffd"

    const/16 v30, 0xa4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffe"

    const/16 v30, 0xa5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udfff"

    const/16 v30, 0xa6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\u200d\u2642"

    const/16 v30, 0xa7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffb\u200d\u2642"

    const/16 v30, 0xa8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffc\u200d\u2642"

    const/16 v30, 0xa9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffd\u200d\u2642"

    const/16 v30, 0xaa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udffe\u200d\u2642"

    const/16 v30, 0xab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc4\ud83c\udfff\u200d\u2642"

    const/16 v30, 0xac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\u200d\u2640"

    const/16 v30, 0xad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffb\u200d\u2640"

    const/16 v30, 0xae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffc\u200d\u2640"

    const/16 v30, 0xaf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffd\u200d\u2640"

    const/16 v30, 0xb0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffe\u200d\u2640"

    const/16 v30, 0xb1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udfff\u200d\u2640"

    const/16 v30, 0xb2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca"

    const/16 v30, 0xb3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffb"

    const/16 v30, 0xb4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffc"

    const/16 v30, 0xb5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffd"

    const/16 v30, 0xb6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffe"

    const/16 v30, 0xb7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udfff"

    const/16 v30, 0xb8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\u200d\u2642"

    const/16 v30, 0xb9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffb\u200d\u2642"

    const/16 v30, 0xba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffc\u200d\u2642"

    const/16 v30, 0xbb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffd\u200d\u2642"

    const/16 v30, 0xbc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udffe\u200d\u2642"

    const/16 v30, 0xbd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfca\ud83c\udfff\u200d\u2642"

    const/16 v30, 0xbe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\u200d\u2640"

    const/16 v30, 0xbf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffb\u200d\u2640"

    const/16 v30, 0xc0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffc\u200d\u2640"

    const/16 v30, 0xc1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffd\u200d\u2640"

    const/16 v30, 0xc2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffe\u200d\u2640"

    const/16 v30, 0xc3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udfff\u200d\u2640"

    const/16 v30, 0xc4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d"

    const/16 v30, 0xc5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffb"

    const/16 v30, 0xc6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffc"

    const/16 v30, 0xc7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffd"

    const/16 v30, 0xc8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffe"

    const/16 v30, 0xc9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udfff"

    const/16 v30, 0xca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\u200d\u2642"

    const/16 v30, 0xcb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffb\u200d\u2642"

    const/16 v30, 0xcc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffc\u200d\u2642"

    const/16 v30, 0xcd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffd\u200d\u2642"

    const/16 v30, 0xce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udffe\u200d\u2642"

    const/16 v30, 0xcf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd3d\ud83c\udfff\u200d\u2642"

    const/16 v30, 0xd0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\u200d\u2640"

    const/16 v30, 0xd1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffb\u200d\u2640"

    const/16 v30, 0xd2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffc\u200d\u2640"

    const/16 v30, 0xd3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffd\u200d\u2640"

    const/16 v30, 0xd4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffe\u200d\u2640"

    const/16 v30, 0xd5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udfff\u200d\u2640"

    const/16 v30, 0xd6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3"

    const/16 v30, 0xd7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffb"

    const/16 v30, 0xd8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffc"

    const/16 v30, 0xd9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffd"

    const/16 v30, 0xda

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffe"

    const/16 v30, 0xdb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udfff"

    const/16 v30, 0xdc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\u200d\u2642"

    const/16 v30, 0xdd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffb\u200d\u2642"

    const/16 v30, 0xde

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffc\u200d\u2642"

    const/16 v30, 0xdf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffd\u200d\u2642"

    const/16 v30, 0xe0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udffe\u200d\u2642"

    const/16 v30, 0xe1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udea3\ud83c\udfff\u200d\u2642"

    const/16 v30, 0xe2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\u200d\u2640"

    const/16 v30, 0xe3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffb\u200d\u2640"

    const/16 v30, 0xe4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffc\u200d\u2640"

    const/16 v30, 0xe5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffd\u200d\u2640"

    const/16 v30, 0xe6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffe\u200d\u2640"

    const/16 v30, 0xe7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udfff\u200d\u2640"

    const/16 v30, 0xe8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7"

    const/16 v30, 0xe9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffb"

    const/16 v30, 0xea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffc"

    const/16 v30, 0xeb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffd"

    const/16 v30, 0xec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffe"

    const/16 v30, 0xed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udfff"

    const/16 v30, 0xee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\u200d\u2642"

    const/16 v30, 0xef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffb\u200d\u2642"

    const/16 v30, 0xf0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffc\u200d\u2642"

    const/16 v30, 0xf1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffd\u200d\u2642"

    const/16 v30, 0xf2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udffe\u200d\u2642"

    const/16 v30, 0xf3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddd7\ud83c\udfff\u200d\u2642"

    const/16 v30, 0xf4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\u200d\u2640"

    const/16 v30, 0xf5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffb\u200d\u2640"

    const/16 v30, 0xf6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffc\u200d\u2640"

    const/16 v30, 0xf7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffd\u200d\u2640"

    const/16 v30, 0xf8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffe\u200d\u2640"

    const/16 v30, 0xf9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udfff\u200d\u2640"

    const/16 v30, 0xfa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5"

    const/16 v30, 0xfb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffb"

    const/16 v30, 0xfc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffc"

    const/16 v30, 0xfd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffd"

    const/16 v30, 0xfe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffe"

    const/16 v30, 0xff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udfff"

    const/16 v30, 0x100

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\u200d\u2642"

    const/16 v30, 0x101

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x102

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x103

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x104

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x105

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb5\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x106

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\u200d\u2640"

    const/16 v30, 0x107

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x108

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x109

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x10a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x10b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x10c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4"

    const/16 v30, 0x10d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffb"

    const/16 v30, 0x10e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffc"

    const/16 v30, 0x10f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffd"

    const/16 v30, 0x110

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffe"

    const/16 v30, 0x111

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udfff"

    const/16 v30, 0x112

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\u200d\u2642"

    const/16 v30, 0x113

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x114

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x115

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x116

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x117

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb4\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x118

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc6"

    const/16 v30, 0x119

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd47"

    const/16 v30, 0x11a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd48"

    const/16 v30, 0x11b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd49"

    const/16 v30, 0x11c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfc5"

    const/16 v30, 0x11d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf96"

    const/16 v30, 0x11e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udff5"

    const/16 v30, 0x11f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf97"

    const/16 v30, 0x120

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfab"

    const/16 v30, 0x121

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf9f"

    const/16 v30, 0x122

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfaa"

    const/16 v30, 0x123

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\u200d\u2640"

    const/16 v30, 0x124

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffb\u200d\u2640"

    const/16 v30, 0x125

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffc\u200d\u2640"

    const/16 v30, 0x126

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffd\u200d\u2640"

    const/16 v30, 0x127

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffe\u200d\u2640"

    const/16 v30, 0x128

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udfff\u200d\u2640"

    const/16 v30, 0x129

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39"

    const/16 v30, 0x12a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffb"

    const/16 v30, 0x12b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffc"

    const/16 v30, 0x12c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffd"

    const/16 v30, 0x12d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffe"

    const/16 v30, 0x12e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udfff"

    const/16 v30, 0x12f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\u200d\u2642"

    const/16 v30, 0x130

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffb\u200d\u2642"

    const/16 v30, 0x131

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffc\u200d\u2642"

    const/16 v30, 0x132

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffd\u200d\u2642"

    const/16 v30, 0x133

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udffe\u200d\u2642"

    const/16 v30, 0x134

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd39\ud83c\udfff\u200d\u2642"

    const/16 v30, 0x135

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfad"

    const/16 v30, 0x136

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude70"

    const/16 v30, 0x137

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa8"

    const/16 v30, 0x138

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udedf"

    const/16 v30, 0x139

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfac"

    const/16 v30, 0x13a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa4"

    const/16 v30, 0x13b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa7"

    const/16 v30, 0x13c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfbc"

    const/16 v30, 0x13d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb9"

    const/16 v30, 0x13e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude87"

    const/16 v30, 0x13f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd41"

    const/16 v30, 0x140

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude98"

    const/16 v30, 0x141

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb7"

    const/16 v30, 0x142

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfba"

    const/16 v30, 0x143

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude97"

    const/16 v30, 0x144

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb8"

    const/16 v30, 0x145

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude95"

    const/16 v30, 0x146

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude89"

    const/16 v30, 0x147

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfbb"

    const/16 v30, 0x148

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude88"

    const/16 v30, 0x149

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb2"

    const/16 v30, 0x14a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u265f"

    const/16 v30, 0x14b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfaf"

    const/16 v30, 0x14c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb3"

    const/16 v30, 0x14d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfae"

    const/16 v30, 0x14e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb0"

    const/16 v30, 0x14f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde9"

    const/16 v30, 0x150

    aput-object v29, v5, v30

    aput-object v5, v4, v7

    const-string/jumbo v160, "\ud83c\udf09"

    const-string/jumbo v161, "\ud83c\udf01"

    const-string/jumbo v31, "\ud83d\ude97"

    const-string/jumbo v32, "\ud83d\ude95"

    const-string/jumbo v33, "\ud83d\ude99"

    const-string/jumbo v34, "\ud83d\ude8c"

    const-string/jumbo v35, "\ud83d\ude8e"

    const-string/jumbo v36, "\ud83c\udfce"

    const-string/jumbo v37, "\ud83d\ude93"

    const-string/jumbo v38, "\ud83d\ude91"

    const-string/jumbo v39, "\ud83d\ude92"

    const-string/jumbo v40, "\ud83d\ude90"

    const-string/jumbo v41, "\ud83d\udefb"

    const-string/jumbo v42, "\ud83d\ude9a"

    const-string/jumbo v43, "\ud83d\ude9b"

    const-string/jumbo v44, "\ud83d\ude9c"

    const-string/jumbo v45, "\ud83e\uddaf"

    const-string/jumbo v46, "\ud83e\uddbd"

    const-string/jumbo v47, "\ud83e\uddbc"

    const-string/jumbo v48, "\ud83e\ude7c"

    const-string/jumbo v49, "\ud83d\udef4"

    const-string/jumbo v50, "\ud83d\udeb2"

    const-string/jumbo v51, "\ud83d\udef5"

    const-string/jumbo v52, "\ud83c\udfcd"

    const-string/jumbo v53, "\ud83d\udefa"

    const-string/jumbo v54, "\ud83d\udede"

    const-string/jumbo v55, "\ud83d\udea8"

    const-string/jumbo v56, "\ud83d\ude94"

    const-string/jumbo v57, "\ud83d\ude8d"

    const-string/jumbo v58, "\ud83d\ude98"

    const-string/jumbo v59, "\ud83d\ude96"

    const-string/jumbo v60, "\ud83d\udea1"

    const-string/jumbo v61, "\ud83d\udea0"

    const-string/jumbo v62, "\ud83d\ude9f"

    const-string/jumbo v63, "\ud83d\ude83"

    const-string/jumbo v64, "\ud83d\ude8b"

    const-string/jumbo v65, "\ud83d\ude9e"

    const-string/jumbo v66, "\ud83d\ude9d"

    const-string/jumbo v67, "\ud83d\ude84"

    const-string/jumbo v68, "\ud83d\ude85"

    const-string/jumbo v69, "\ud83d\ude88"

    const-string/jumbo v70, "\ud83d\ude82"

    const-string/jumbo v71, "\ud83d\ude86"

    const-string/jumbo v72, "\ud83d\ude87"

    const-string/jumbo v73, "\ud83d\ude8a"

    const-string/jumbo v74, "\ud83d\ude89"

    const-string/jumbo v75, "\u2708"

    const-string/jumbo v76, "\ud83d\udeeb"

    const-string/jumbo v77, "\ud83d\udeec"

    const-string/jumbo v78, "\ud83d\udee9"

    const-string/jumbo v79, "\ud83d\udcba"

    const-string/jumbo v80, "\ud83d\udef0"

    const-string/jumbo v81, "\ud83d\ude80"

    const-string/jumbo v82, "\ud83d\udef8"

    const-string/jumbo v83, "\ud83d\ude81"

    const-string/jumbo v84, "\ud83d\udef6"

    const-string/jumbo v85, "\u26f5"

    const-string/jumbo v86, "\ud83d\udea4"

    const-string/jumbo v87, "\ud83d\udee5"

    const-string/jumbo v88, "\ud83d\udef3"

    const-string/jumbo v89, "\u26f4"

    const-string/jumbo v90, "\ud83d\udea2"

    const-string/jumbo v91, "\ud83d\udedf"

    const-string/jumbo v92, "\u2693"

    const-string/jumbo v93, "\ud83e\ude9d"

    const-string/jumbo v94, "\u26fd"

    const-string/jumbo v95, "\ud83d\udea7"

    const-string/jumbo v96, "\ud83d\udea6"

    const-string/jumbo v97, "\ud83d\udea5"

    const-string/jumbo v98, "\ud83d\ude8f"

    const-string/jumbo v99, "\ud83d\uddfa"

    const-string/jumbo v100, "\ud83d\uddff"

    const-string/jumbo v101, "\ud83d\uddfd"

    const-string/jumbo v102, "\ud83d\uddfc"

    const-string/jumbo v103, "\ud83c\udff0"

    const-string/jumbo v104, "\ud83c\udfef"

    const-string/jumbo v105, "\ud83c\udfdf"

    const-string/jumbo v106, "\ud83c\udfa1"

    const-string/jumbo v107, "\ud83c\udfa2"

    const-string/jumbo v108, "\ud83c\udfa0"

    const-string/jumbo v109, "\u26f2"

    const-string/jumbo v110, "\u26f1"

    const-string/jumbo v111, "\ud83c\udfd6"

    const-string/jumbo v112, "\ud83c\udfdd"

    const-string/jumbo v113, "\ud83c\udfdc"

    const-string/jumbo v114, "\ud83c\udf0b"

    const-string/jumbo v115, "\u26f0"

    const-string/jumbo v116, "\ud83c\udfd4"

    const-string/jumbo v117, "\ud83d\uddfb"

    const-string/jumbo v118, "\ud83c\udfd5"

    const-string/jumbo v119, "\u26fa"

    const-string/jumbo v120, "\ud83d\uded6"

    const-string/jumbo v121, "\ud83c\udfe0"

    const-string/jumbo v122, "\ud83c\udfe1"

    const-string/jumbo v123, "\ud83c\udfd8"

    const-string/jumbo v124, "\ud83c\udfda"

    const-string/jumbo v125, "\ud83c\udfd7"

    const-string/jumbo v126, "\ud83c\udfed"

    const-string/jumbo v127, "\ud83c\udfe2"

    const-string/jumbo v128, "\ud83c\udfec"

    const-string/jumbo v129, "\ud83c\udfe3"

    const-string/jumbo v130, "\ud83c\udfe4"

    const-string/jumbo v131, "\ud83c\udfe5"

    const-string/jumbo v132, "\ud83c\udfe6"

    const-string/jumbo v133, "\ud83c\udfe8"

    const-string/jumbo v134, "\ud83c\udfea"

    const-string/jumbo v135, "\ud83c\udfeb"

    const-string/jumbo v136, "\ud83c\udfe9"

    const-string/jumbo v137, "\ud83d\udc92"

    const-string/jumbo v138, "\ud83c\udfdb"

    const-string/jumbo v139, "\u26ea"

    const-string/jumbo v140, "\ud83d\udd4c"

    const-string/jumbo v141, "\ud83d\udd4d"

    const-string/jumbo v142, "\ud83d\uded5"

    const-string/jumbo v143, "\ud83d\udd4b"

    const-string/jumbo v144, "\u26e9"

    const-string/jumbo v145, "\ud83d\udee4"

    const-string/jumbo v146, "\ud83d\udee3"

    const-string/jumbo v147, "\ud83d\uddfe"

    const-string/jumbo v148, "\ud83c\udf91"

    const-string/jumbo v149, "\ud83c\udfde"

    const-string/jumbo v150, "\ud83c\udf05"

    const-string/jumbo v151, "\ud83c\udf04"

    const-string/jumbo v152, "\ud83c\udf20"

    const-string/jumbo v153, "\ud83c\udf87"

    const-string/jumbo v154, "\ud83c\udf86"

    const-string/jumbo v155, "\ud83c\udf07"

    const-string/jumbo v156, "\ud83c\udf06"

    const-string/jumbo v157, "\ud83c\udfd9"

    const-string/jumbo v158, "\ud83c\udf03"

    const-string/jumbo v159, "\ud83c\udf0c"

    filled-new-array/range {v31 .. v161}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0xe7

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v29, "\u231a"

    aput-object v29, v5, v27

    const-string/jumbo v29, "\ud83d\udcf1"

    aput-object v29, v5, v6

    const-string/jumbo v29, "\ud83d\udcf2"

    aput-object v29, v5, v28

    const-string/jumbo v29, "\ud83d\udcbb"

    aput-object v29, v5, v7

    const-string/jumbo v29, "\u2328"

    aput-object v29, v5, v8

    const-string/jumbo v29, "\ud83d\udda5"

    aput-object v29, v5, v9

    const-string/jumbo v29, "\ud83d\udda8"

    aput-object v29, v5, v10

    const-string/jumbo v29, "\ud83d\uddb1"

    aput-object v29, v5, v11

    const-string/jumbo v29, "\ud83d\uddb2"

    aput-object v29, v5, v12

    const-string/jumbo v29, "\ud83d\udd79"

    const/16 v30, 0x9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udddc"

    const/16 v30, 0xa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcbd"

    const/16 v30, 0xb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcbe"

    const/16 v30, 0xc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcbf"

    const/16 v30, 0xd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc0"

    const/16 v30, 0xe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcfc"

    const/16 v30, 0xf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcf7"

    const/16 v30, 0x10

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcf8"

    const/16 v30, 0x11

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcf9"

    const/16 v30, 0x12

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa5"

    const/16 v30, 0x13

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcfd"

    const/16 v30, 0x14

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf9e"

    const/16 v30, 0x15

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcde"

    const/16 v30, 0x16

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u260e"

    const/16 v30, 0x17

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcdf"

    const/16 v30, 0x18

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce0"

    const/16 v30, 0x19

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcfa"

    const/16 v30, 0x1a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcfb"

    const/16 v30, 0x1b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf99"

    const/16 v30, 0x1c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf9a"

    const/16 v30, 0x1d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf9b"

    const/16 v30, 0x1e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udded"

    const/16 v30, 0x1f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23f1"

    const/16 v30, 0x20

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23f2"

    const/16 v30, 0x21

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23f0"

    const/16 v30, 0x22

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd70"

    aput-object v29, v5, v14

    const-string/jumbo v29, "\u231b"

    const/16 v30, 0x24

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23f3"

    const/16 v30, 0x25

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce1"

    const/16 v30, 0x26

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd0b"

    const/16 v30, 0x27

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeab"

    const/16 v30, 0x28

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd0c"

    const/16 v30, 0x29

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca1"

    aput-object v29, v5, v15

    const-string/jumbo v29, "\ud83d\udd26"

    const/16 v30, 0x2b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd6f"

    const/16 v30, 0x2c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude94"

    const/16 v30, 0x2d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddef"

    const/16 v30, 0x2e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udee2"

    const/16 v30, 0x2f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcb8"

    aput-object v29, v5, v16

    const-string/jumbo v29, "\ud83d\udcb5"

    aput-object v29, v5, v17

    const-string/jumbo v29, "\ud83d\udcb4"

    aput-object v29, v5, v18

    const-string/jumbo v29, "\ud83d\udcb6"

    aput-object v29, v5, v19

    const-string/jumbo v29, "\ud83d\udcb7"

    aput-object v29, v5, v20

    const-string/jumbo v29, "\ud83e\ude99"

    aput-object v29, v5, v21

    const-string/jumbo v29, "\ud83d\udcb0"

    aput-object v29, v5, v22

    const-string/jumbo v29, "\ud83d\udcb3"

    aput-object v29, v5, v23

    const-string/jumbo v29, "\ud83e\udeaa"

    aput-object v29, v5, v24

    const-string/jumbo v29, "\ud83d\udc8e"

    aput-object v29, v5, v25

    const-string/jumbo v29, "\u2696"

    const/16 v30, 0x3a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude9c"

    const/16 v30, 0x3b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf0"

    const/16 v30, 0x3c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude9b"

    const/16 v30, 0x3d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd27"

    const/16 v30, 0x3e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd28"

    const/16 v30, 0x3f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2692"

    const/16 v30, 0x40

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udee0"

    const/16 v30, 0x41

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26cf"

    const/16 v30, 0x42

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude8f"

    const/16 v30, 0x43

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude9a"

    const/16 v30, 0x44

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd29"

    const/16 v30, 0x45

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2699"

    const/16 v30, 0x46

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea4"

    const/16 v30, 0x47

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf1"

    const/16 v30, 0x48

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26d3"

    const/16 v30, 0x49

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26d3\u200d\ud83d\udca5"

    const/16 v30, 0x4a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf2"

    const/16 v30, 0x4b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd2b"

    const/16 v30, 0x4c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca3"

    const/16 v30, 0x4d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde8"

    const/16 v30, 0x4e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude93"

    const/16 v30, 0x4f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd2a"

    const/16 v30, 0x50

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udde1"

    const/16 v30, 0x51

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2694"

    const/16 v30, 0x52

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udee1"

    const/16 v30, 0x53

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeac"

    const/16 v30, 0x54

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26b0"

    const/16 v30, 0x55

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea6"

    const/16 v30, 0x56

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26b1"

    const/16 v30, 0x57

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udffa"

    const/16 v30, 0x58

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd2e"

    const/16 v30, 0x59

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcff"

    const/16 v30, 0x5a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddff"

    const/16 v30, 0x5b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeac"

    const/16 v30, 0x5c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc88"

    const/16 v30, 0x5d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2697"

    const/16 v30, 0x5e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd2d"

    const/16 v30, 0x5f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd2c"

    const/16 v30, 0x60

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd73\ufe0f"

    const/16 v30, 0x61

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude7b"

    const/16 v30, 0x62

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude79"

    const/16 v30, 0x63

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude7a"

    const/16 v30, 0x64

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc8a"

    const/16 v30, 0x65

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc89"

    const/16 v30, 0x66

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude78"

    const/16 v30, 0x67

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddec"

    const/16 v30, 0x68

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udda0"

    const/16 v30, 0x69

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddeb"

    const/16 v30, 0x6a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddea"

    const/16 v30, 0x6b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf21"

    const/16 v30, 0x6c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf9"

    const/16 v30, 0x6d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea0"

    const/16 v30, 0x6e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddfa"

    const/16 v30, 0x6f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddfb"

    const/16 v30, 0x70

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udebd"

    const/16 v30, 0x71

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb0"

    const/16 v30, 0x72

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udebf"

    aput-object v29, v5, v26

    const-string/jumbo v29, "\ud83d\udec1"

    const/16 v30, 0x74

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec0"

    const/16 v30, 0x75

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec0\ud83c\udffb"

    const/16 v30, 0x76

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec0\ud83c\udffc"

    const/16 v30, 0x77

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec0\ud83c\udffd"

    const/16 v30, 0x78

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec0\ud83c\udffe"

    const/16 v30, 0x79

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec0\ud83c\udfff"

    const/16 v30, 0x7a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddfc"

    const/16 v30, 0x7b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea5"

    const/16 v30, 0x7c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude92"

    const/16 v30, 0x7d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeae"

    const/16 v30, 0x7e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddfd"

    const/16 v30, 0x7f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea3"

    const/16 v30, 0x80

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf4"

    const/16 v30, 0x81

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udece"

    const/16 v30, 0x82

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd11"

    const/16 v30, 0x83

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udddd"

    const/16 v30, 0x84

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeaa"

    const/16 v30, 0x85

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude91"

    const/16 v30, 0x86

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udecb"

    const/16 v30, 0x87

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udecf"

    const/16 v30, 0x88

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udecc"

    const/16 v30, 0x89

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf8"

    const/16 v30, 0x8a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude86"

    const/16 v30, 0x8b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddbc"

    const/16 v30, 0x8c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude9e"

    const/16 v30, 0x8d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude9f"

    const/16 v30, 0x8e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udecd"

    const/16 v30, 0x8f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uded2"

    const/16 v30, 0x90

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf81"

    const/16 v30, 0x91

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf88"

    const/16 v30, 0x92

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf8f"

    const/16 v30, 0x93

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf80"

    const/16 v30, 0x94

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude84"

    const/16 v30, 0x95

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\ude85"

    const/16 v30, 0x96

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf8a"

    const/16 v30, 0x97

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf89"

    const/16 v30, 0x98

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf8e"

    const/16 v30, 0x99

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udead"

    const/16 v30, 0x9a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfee"

    const/16 v30, 0x9b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf90"

    const/16 v30, 0x9c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea9"

    const/16 v30, 0x9d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udde7"

    const/16 v30, 0x9e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2709"

    const/16 v30, 0x9f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce9"

    const/16 v30, 0xa0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce8"

    const/16 v30, 0xa1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce7"

    const/16 v30, 0xa2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc8c"

    const/16 v30, 0xa3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce5"

    const/16 v30, 0xa4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce4"

    const/16 v30, 0xa5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce6"

    const/16 v30, 0xa6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udff7"

    const/16 v30, 0xa7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udea7"

    const/16 v30, 0xa8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcea"

    const/16 v30, 0xa9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udceb"

    const/16 v30, 0xaa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcec"

    const/16 v30, 0xab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udced"

    const/16 v30, 0xac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcee"

    const/16 v30, 0xad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcef"

    const/16 v30, 0xae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcdc"

    const/16 v30, 0xaf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc3"

    const/16 v30, 0xb0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc4"

    const/16 v30, 0xb1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd1"

    const/16 v30, 0xb2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddfe"

    const/16 v30, 0xb3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcca"

    const/16 v30, 0xb4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc8"

    const/16 v30, 0xb5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc9"

    const/16 v30, 0xb6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddd2"

    const/16 v30, 0xb7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddd3"

    const/16 v30, 0xb8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc6"

    const/16 v30, 0xb9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc5"

    const/16 v30, 0xba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddd1"

    const/16 v30, 0xbb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc7"

    const/16 v30, 0xbc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddc3"

    const/16 v30, 0xbd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddf3"

    const/16 v30, 0xbe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddc4"

    const/16 v30, 0xbf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udccb"

    const/16 v30, 0xc0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc1"

    const/16 v30, 0xc1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcc2"

    const/16 v30, 0xc2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddc2"

    const/16 v30, 0xc3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddde"

    const/16 v30, 0xc4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcf0"

    const/16 v30, 0xc5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd3"

    const/16 v30, 0xc6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd4"

    const/16 v30, 0xc7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd2"

    const/16 v30, 0xc8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd5"

    const/16 v30, 0xc9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd7"

    const/16 v30, 0xca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd8"

    const/16 v30, 0xcb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd9"

    const/16 v30, 0xcc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcda"

    const/16 v30, 0xcd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd6"

    const/16 v30, 0xce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd16"

    const/16 v30, 0xcf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddf7"

    const/16 v30, 0xd0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd17"

    const/16 v30, 0xd1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcce"

    const/16 v30, 0xd2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd87"

    const/16 v30, 0xd3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcd0"

    const/16 v30, 0xd4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udccf"

    const/16 v30, 0xd5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\uddee"

    const/16 v30, 0xd6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udccc"

    const/16 v30, 0xd7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udccd"

    const/16 v30, 0xd8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2702"

    const/16 v30, 0xd9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd8a"

    const/16 v30, 0xda

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd8b"

    const/16 v30, 0xdb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2712"

    const/16 v30, 0xdc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd8c"

    const/16 v30, 0xdd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd8d"

    const/16 v30, 0xde

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcdd"

    const/16 v30, 0xdf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u270f"

    const/16 v30, 0xe0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd0d"

    const/16 v30, 0xe1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd0e"

    const/16 v30, 0xe2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd0f"

    const/16 v30, 0xe3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd10"

    const/16 v30, 0xe4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd12"

    const/16 v30, 0xe5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd13"

    const/16 v30, 0xe6

    aput-object v29, v5, v30

    aput-object v5, v4, v9

    const/16 v5, 0x12a

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v29, "\ud83e\ude77"

    aput-object v29, v5, v27

    const-string/jumbo v29, "\u2764"

    aput-object v29, v5, v6

    const-string/jumbo v29, "\ud83e\udde1"

    aput-object v29, v5, v28

    const-string/jumbo v29, "\ud83d\udc9b"

    aput-object v29, v5, v7

    const-string/jumbo v29, "\ud83d\udc9a"

    aput-object v29, v5, v8

    const-string/jumbo v29, "\ud83e\ude75"

    aput-object v29, v5, v9

    const-string/jumbo v29, "\ud83d\udc99"

    aput-object v29, v5, v10

    const-string/jumbo v29, "\ud83d\udc9c"

    aput-object v29, v5, v11

    const-string/jumbo v29, "\ud83d\udda4"

    aput-object v29, v5, v12

    const-string/jumbo v29, "\ud83e\ude76"

    const/16 v30, 0x9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0d"

    const/16 v30, 0xa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udd0e"

    const/16 v30, 0xb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc94"

    const/16 v30, 0xc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2764\u200d\ud83d\udd25"

    const/16 v30, 0xd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2764\u200d\ud83e\ude79"

    const/16 v30, 0xe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2763"

    const/16 v30, 0xf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc95"

    const/16 v30, 0x10

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc9e"

    const/16 v30, 0x11

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc93"

    const/16 v30, 0x12

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc97"

    const/16 v30, 0x13

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc96"

    const/16 v30, 0x14

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc98"

    const/16 v30, 0x15

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc9d"

    const/16 v30, 0x16

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc9f"

    const/16 v30, 0x17

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u262e"

    const/16 v30, 0x18

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u271d"

    const/16 v30, 0x19

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u262a"

    const/16 v30, 0x1a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd49"

    const/16 v30, 0x1b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2638"

    const/16 v30, 0x1c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83e\udeaf"

    const/16 v30, 0x1d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2721"

    const/16 v30, 0x1e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd2f"

    const/16 v30, 0x1f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd4e"

    const/16 v30, 0x20

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u262f"

    const/16 v30, 0x21

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2626"

    const/16 v30, 0x22

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uded0"

    aput-object v29, v5, v14

    const-string/jumbo v29, "\u26ce"

    const/16 v30, 0x24

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2648"

    const/16 v30, 0x25

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2649"

    const/16 v30, 0x26

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u264a"

    const/16 v30, 0x27

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u264b"

    const/16 v30, 0x28

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u264c"

    const/16 v30, 0x29

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u264d"

    aput-object v29, v5, v15

    const-string/jumbo v29, "\u264e"

    const/16 v30, 0x2b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u264f"

    const/16 v30, 0x2c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2650"

    const/16 v30, 0x2d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2651"

    const/16 v30, 0x2e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2652"

    const/16 v30, 0x2f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2653"

    aput-object v29, v5, v16

    const-string/jumbo v29, "\ud83c\udd94"

    aput-object v29, v5, v17

    const-string/jumbo v29, "\u269b"

    aput-object v29, v5, v18

    const-string/jumbo v29, "\ud83c\ude51"

    aput-object v29, v5, v19

    const-string/jumbo v29, "\u2622"

    aput-object v29, v5, v20

    const-string/jumbo v29, "\u2623"

    aput-object v29, v5, v21

    const-string/jumbo v29, "\ud83d\udcf4"

    aput-object v29, v5, v22

    const-string/jumbo v29, "\ud83d\udcf3"

    aput-object v29, v5, v23

    const-string/jumbo v29, "\ud83c\ude36"

    aput-object v29, v5, v24

    const-string/jumbo v29, "\ud83c\ude1a"

    aput-object v29, v5, v25

    const-string/jumbo v29, "\ud83c\ude38"

    const/16 v30, 0x3a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude3a"

    const/16 v30, 0x3b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude37"

    const/16 v30, 0x3c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2734"

    const/16 v30, 0x3d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd9a"

    const/16 v30, 0x3e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcae"

    const/16 v30, 0x3f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude50"

    const/16 v30, 0x40

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u3299"

    const/16 v30, 0x41

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u3297"

    const/16 v30, 0x42

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude34"

    const/16 v30, 0x43

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude35"

    const/16 v30, 0x44

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude39"

    const/16 v30, 0x45

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude32"

    const/16 v30, 0x46

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd70"

    const/16 v30, 0x47

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd71"

    const/16 v30, 0x48

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd8e"

    const/16 v30, 0x49

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd91"

    const/16 v30, 0x4a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd7e"

    const/16 v30, 0x4b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd98"

    const/16 v30, 0x4c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u274c"

    const/16 v30, 0x4d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b55"

    const/16 v30, 0x4e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uded1"

    const/16 v30, 0x4f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26d4"

    const/16 v30, 0x50

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcdb"

    const/16 v30, 0x51

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeab"

    const/16 v30, 0x52

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcaf"

    const/16 v30, 0x53

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca2"

    const/16 v30, 0x54

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2668"

    const/16 v30, 0x55

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb7"

    const/16 v30, 0x56

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeaf"

    const/16 v30, 0x57

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb3"

    const/16 v30, 0x58

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb1"

    const/16 v30, 0x59

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd1e"

    const/16 v30, 0x5a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcf5"

    const/16 v30, 0x5b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udead"

    const/16 v30, 0x5c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2757"

    const/16 v30, 0x5d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2755"

    const/16 v30, 0x5e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2753"

    const/16 v30, 0x5f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2754"

    const/16 v30, 0x60

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u203c"

    const/16 v30, 0x61

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2049"

    const/16 v30, 0x62

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd05"

    const/16 v30, 0x63

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd06"

    const/16 v30, 0x64

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u303d"

    const/16 v30, 0x65

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26a0"

    const/16 v30, 0x66

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb8"

    const/16 v30, 0x67

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd31"

    const/16 v30, 0x68

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u269c"

    const/16 v30, 0x69

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd30"

    const/16 v30, 0x6a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u267b"

    const/16 v30, 0x6b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2705"

    const/16 v30, 0x6c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude2f"

    const/16 v30, 0x6d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcb9"

    const/16 v30, 0x6e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2747"

    const/16 v30, 0x6f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2733"

    const/16 v30, 0x70

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u274e"

    const/16 v30, 0x71

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf10"

    const/16 v30, 0x72

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca0"

    aput-object v29, v5, v26

    const-string/jumbo v29, "\u24c2"

    const/16 v30, 0x74

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udf00"

    const/16 v30, 0x75

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udca4"

    const/16 v30, 0x76

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfe7"

    const/16 v30, 0x77

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udebe"

    const/16 v30, 0x78

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u267f"

    const/16 v30, 0x79

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd7f"

    const/16 v30, 0x7a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uded7"

    const/16 v30, 0x7b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude33"

    const/16 v30, 0x7c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude02"

    const/16 v30, 0x7d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec2"

    const/16 v30, 0x7e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec3"

    const/16 v30, 0x7f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec4"

    const/16 v30, 0x80

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udec5"

    const/16 v30, 0x81

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udedc"

    const/16 v30, 0x82

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeb9"

    const/16 v30, 0x83

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeba"

    const/16 v30, 0x84

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udebc"

    const/16 v30, 0x85

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26a7"

    const/16 v30, 0x86

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udebb"

    const/16 v30, 0x87

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udeae"

    const/16 v30, 0x88

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfa6"

    const/16 v30, 0x89

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcf6"

    const/16 v30, 0x8a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\ude01"

    const/16 v30, 0x8b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd23"

    const/16 v30, 0x8c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2139"

    const/16 v30, 0x8d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd24"

    const/16 v30, 0x8e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd21"

    const/16 v30, 0x8f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd20"

    const/16 v30, 0x90

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd96"

    const/16 v30, 0x91

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd97"

    const/16 v30, 0x92

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd99"

    const/16 v30, 0x93

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd92"

    const/16 v30, 0x94

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd95"

    const/16 v30, 0x95

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udd93"

    const/16 v30, 0x96

    aput-object v29, v5, v30

    const-string v29, "0\u20e3"

    const/16 v30, 0x97

    aput-object v29, v5, v30

    const-string v29, "1\u20e3"

    const/16 v30, 0x98

    aput-object v29, v5, v30

    const-string v29, "2\u20e3"

    const/16 v30, 0x99

    aput-object v29, v5, v30

    const-string v29, "3\u20e3"

    const/16 v30, 0x9a

    aput-object v29, v5, v30

    const-string v29, "4\u20e3"

    const/16 v30, 0x9b

    aput-object v29, v5, v30

    const-string v29, "5\u20e3"

    const/16 v30, 0x9c

    aput-object v29, v5, v30

    const-string v29, "6\u20e3"

    const/16 v30, 0x9d

    aput-object v29, v5, v30

    const-string v29, "7\u20e3"

    const/16 v30, 0x9e

    aput-object v29, v5, v30

    const-string v29, "8\u20e3"

    const/16 v30, 0x9f

    aput-object v29, v5, v30

    const-string v29, "9\u20e3"

    const/16 v30, 0xa0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd1f"

    const/16 v30, 0xa1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd22"

    const/16 v30, 0xa2

    aput-object v29, v5, v30

    const-string v29, "#\u20e3"

    const/16 v30, 0xa3

    aput-object v29, v5, v30

    const-string v29, "*\u20e3"

    const/16 v30, 0xa4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23cf"

    const/16 v30, 0xa5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25b6"

    const/16 v30, 0xa6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23f8"

    const/16 v30, 0xa7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23ef"

    const/16 v30, 0xa8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23f9"

    const/16 v30, 0xa9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23fa"

    const/16 v30, 0xaa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23ed"

    const/16 v30, 0xab

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23ee"

    const/16 v30, 0xac

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23e9"

    const/16 v30, 0xad

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23ea"

    const/16 v30, 0xae

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23eb"

    const/16 v30, 0xaf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u23ec"

    const/16 v30, 0xb0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25c0"

    const/16 v30, 0xb1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd3c"

    const/16 v30, 0xb2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd3d"

    const/16 v30, 0xb3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u27a1"

    const/16 v30, 0xb4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b05"

    const/16 v30, 0xb5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b06"

    const/16 v30, 0xb6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b07"

    const/16 v30, 0xb7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2197"

    const/16 v30, 0xb8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2198"

    const/16 v30, 0xb9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2199"

    const/16 v30, 0xba

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2196"

    const/16 v30, 0xbb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2195"

    const/16 v30, 0xbc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2194"

    const/16 v30, 0xbd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u21aa"

    const/16 v30, 0xbe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u21a9"

    const/16 v30, 0xbf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2934"

    const/16 v30, 0xc0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2935"

    const/16 v30, 0xc1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd00"

    const/16 v30, 0xc2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd01"

    const/16 v30, 0xc3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd02"

    const/16 v30, 0xc4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd04"

    const/16 v30, 0xc5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd03"

    const/16 v30, 0xc6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb5"

    const/16 v30, 0xc7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb6"

    const/16 v30, 0xc8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2795"

    const/16 v30, 0xc9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2796"

    const/16 v30, 0xca

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2797"

    const/16 v30, 0xcb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2716"

    const/16 v30, 0xcc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udff0"

    const/16 v30, 0xcd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u267e"

    const/16 v30, 0xce

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcb2"

    const/16 v30, 0xcf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcb1"

    const/16 v30, 0xd0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2122\ufe0f"

    const/16 v30, 0xd1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u00a9"

    const/16 v30, 0xd2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u00ae"

    const/16 v30, 0xd3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udc41\u200d\ud83d\udde8"

    const/16 v30, 0xd4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd1a"

    const/16 v30, 0xd5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd19"

    const/16 v30, 0xd6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd1b"

    const/16 v30, 0xd7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd1d"

    const/16 v30, 0xd8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd1c"

    const/16 v30, 0xd9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u3030"

    const/16 v30, 0xda

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u27b0"

    const/16 v30, 0xdb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u27bf"

    const/16 v30, 0xdc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2714"

    const/16 v30, 0xdd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2611"

    const/16 v30, 0xde

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd18"

    const/16 v30, 0xdf

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd34"

    const/16 v30, 0xe0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe0"

    const/16 v30, 0xe1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe1"

    const/16 v30, 0xe2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe2"

    const/16 v30, 0xe3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd35"

    const/16 v30, 0xe4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe3"

    const/16 v30, 0xe5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26ab"

    const/16 v30, 0xe6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u26aa"

    const/16 v30, 0xe7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe4"

    const/16 v30, 0xe8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd3a"

    const/16 v30, 0xe9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd3b"

    const/16 v30, 0xea

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd38"

    const/16 v30, 0xeb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd39"

    const/16 v30, 0xec

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd36"

    const/16 v30, 0xed

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd37"

    const/16 v30, 0xee

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd33"

    const/16 v30, 0xef

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd32"

    const/16 v30, 0xf0

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25aa"

    const/16 v30, 0xf1

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25ab"

    const/16 v30, 0xf2

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25fe"

    const/16 v30, 0xf3

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25fd"

    const/16 v30, 0xf4

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25fc"

    const/16 v30, 0xf5

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u25fb"

    const/16 v30, 0xf6

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe5"

    const/16 v30, 0xf7

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe7"

    const/16 v30, 0xf8

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe8"

    const/16 v30, 0xf9

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe9"

    const/16 v30, 0xfa

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfe6"

    const/16 v30, 0xfb

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfea"

    const/16 v30, 0xfc

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b1b"

    const/16 v30, 0xfd

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2b1c"

    const/16 v30, 0xfe

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udfeb"

    const/16 v30, 0xff

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd08"

    const/16 v30, 0x100

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd07"

    const/16 v30, 0x101

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd09"

    const/16 v30, 0x102

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd0a"

    const/16 v30, 0x103

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd14"

    const/16 v30, 0x104

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd15"

    const/16 v30, 0x105

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce3"

    const/16 v30, 0x106

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udce2"

    const/16 v30, 0x107

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcac"

    const/16 v30, 0x108

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udcad"

    const/16 v30, 0x109

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\uddef"

    const/16 v30, 0x10a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2660"

    const/16 v30, 0x10b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2663"

    const/16 v30, 0x10c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2665"

    const/16 v30, 0x10d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\u2666"

    const/16 v30, 0x10e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udccf"

    const/16 v30, 0x10f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udfb4"

    const/16 v30, 0x110

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83c\udc04"

    const/16 v30, 0x111

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd50"

    const/16 v30, 0x112

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd51"

    const/16 v30, 0x113

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd52"

    const/16 v30, 0x114

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd53"

    const/16 v30, 0x115

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd54"

    const/16 v30, 0x116

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd55"

    const/16 v30, 0x117

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd56"

    const/16 v30, 0x118

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd57"

    const/16 v30, 0x119

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd58"

    const/16 v30, 0x11a

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd59"

    const/16 v30, 0x11b

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd5a"

    const/16 v30, 0x11c

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd5b"

    const/16 v30, 0x11d

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd5c"

    const/16 v30, 0x11e

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd5d"

    const/16 v30, 0x11f

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd5e"

    const/16 v30, 0x120

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd5f"

    const/16 v30, 0x121

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd60"

    const/16 v30, 0x122

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd61"

    const/16 v30, 0x123

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd62"

    const/16 v30, 0x124

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd63"

    const/16 v30, 0x125

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd64"

    const/16 v30, 0x126

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd65"

    const/16 v30, 0x127

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd66"

    const/16 v30, 0x128

    aput-object v29, v5, v30

    const-string/jumbo v29, "\ud83d\udd67"

    const/16 v30, 0x129

    aput-object v29, v5, v30

    aput-object v5, v4, v10

    const/16 v5, 0x104

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v29, "\ud83c\udff3"

    aput-object v29, v5, v27

    const-string/jumbo v29, "\ud83c\udff4"

    aput-object v29, v5, v6

    const-string/jumbo v6, "\ud83c\udff4\u200d\u2620"

    aput-object v6, v5, v28

    const-string/jumbo v6, "\ud83c\udfc1"

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83d\udea9"

    aput-object v6, v5, v8

    const-string/jumbo v6, "\ud83c\udff3\u200d\ud83c\udf08"

    aput-object v6, v5, v9

    const-string/jumbo v6, "\ud83c\udff3\u200d\u26a7"

    aput-object v6, v5, v10

    const-string/jumbo v6, "\ud83c\uddfa\ud83c\uddf3"

    aput-object v6, v5, v11

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddeb"

    aput-object v6, v5, v12

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddfd"

    const/16 v7, 0x9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf1"

    const/16 v7, 0xa

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde9\ud83c\uddff"

    const/16 v7, 0xb

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf8"

    const/16 v7, 0xc

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\udde9"

    const/16 v7, 0xd

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf4"

    const/16 v7, 0xe

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddee"

    const/16 v7, 0xf

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf6"

    const/16 v7, 0x10

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddec"

    const/16 v7, 0x11

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf7"

    const/16 v7, 0x12

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf2"

    const/16 v7, 0x13

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddfc"

    const/16 v7, 0x14

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddfa"

    const/16 v7, 0x15

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddf9"

    const/16 v7, 0x16

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddff"

    const/16 v7, 0x17

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf8"

    const/16 v7, 0x18

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\udded"

    const/16 v7, 0x19

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\udde9"

    const/16 v7, 0x1a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\udde7"

    const/16 v7, 0x1b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddfe"

    const/16 v7, 0x1c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddea"

    const/16 v7, 0x1d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddff"

    const/16 v7, 0x1e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddef"

    const/16 v7, 0x1f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf2"

    const/16 v7, 0x20

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf9"

    const/16 v7, 0x21

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf4"

    const/16 v7, 0x22

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\udde6"

    aput-object v6, v5, v14

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddfc"

    const/16 v7, 0x24

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf7"

    const/16 v7, 0x25

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\uddec"

    const/16 v7, 0x26

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf3"

    const/16 v7, 0x27

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddec"

    const/16 v7, 0x28

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddeb"

    const/16 v7, 0x29

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddee"

    aput-object v6, v5, v15

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\udded"

    const/16 v7, 0x2b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf2"

    const/16 v7, 0x2c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\udde6"

    const/16 v7, 0x2d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\udde8"

    const/16 v7, 0x2e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddfb"

    const/16 v7, 0x2f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf6"

    aput-object v6, v5, v16

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddfe"

    aput-object v6, v5, v17

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddeb"

    aput-object v6, v5, v18

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\udde9"

    aput-object v6, v5, v19

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf4"

    aput-object v6, v5, v20

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf1"

    aput-object v6, v5, v21

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf3"

    aput-object v6, v5, v22

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddfd"

    aput-object v6, v5, v23

    const-string/jumbo v6, "\ud83c\udde8\ud83c\udde8"

    aput-object v6, v5, v24

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf4"

    aput-object v6, v5, v25

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddf2"

    const/16 v7, 0x3a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddec"

    const/16 v7, 0x3b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\udde9"

    const/16 v7, 0x3c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf0"

    const/16 v7, 0x3d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf7"

    const/16 v7, 0x3e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddee"

    const/16 v7, 0x3f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udded\ud83c\uddf7"

    const/16 v7, 0x40

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddfa"

    const/16 v7, 0x41

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddfc"

    const/16 v7, 0x42

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddfe"

    const/16 v7, 0x43

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddff"

    const/16 v7, 0x44

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde9\ud83c\uddf0"

    const/16 v7, 0x45

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde9\ud83c\uddef"

    const/16 v7, 0x46

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde9\ud83c\uddf2"

    const/16 v7, 0x47

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde9\ud83c\uddf4"

    const/16 v7, 0x48

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\udde8"

    const/16 v7, 0x49

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\uddec"

    const/16 v7, 0x4a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddfb"

    const/16 v7, 0x4b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf6"

    const/16 v7, 0x4c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\uddf7"

    const/16 v7, 0x4d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\uddea"

    const/16 v7, 0x4e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddff"

    const/16 v7, 0x4f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\uddf9"

    const/16 v7, 0x50

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\uddfa"

    const/16 v7, 0x51

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddeb\ud83c\uddf0"

    const/16 v7, 0x52

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddeb\ud83c\uddf4"

    const/16 v7, 0x53

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddeb\ud83c\uddef"

    const/16 v7, 0x54

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddeb\ud83c\uddee"

    const/16 v7, 0x55

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddeb\ud83c\uddf7"

    const/16 v7, 0x56

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddeb"

    const/16 v7, 0x57

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddeb"

    const/16 v7, 0x58

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddeb"

    const/16 v7, 0x59

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\udde6"

    const/16 v7, 0x5a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf2"

    const/16 v7, 0x5b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddea"

    const/16 v7, 0x5c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde9\ud83c\uddea"

    const/16 v7, 0x5d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\udded"

    const/16 v7, 0x5e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddee"

    const/16 v7, 0x5f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf7"

    const/16 v7, 0x60

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf1"

    const/16 v7, 0x61

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\udde9"

    const/16 v7, 0x62

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf5"

    const/16 v7, 0x63

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddfa"

    const/16 v7, 0x64

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf9"

    const/16 v7, 0x65

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddec"

    const/16 v7, 0x66

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf3"

    const/16 v7, 0x67

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddfc"

    const/16 v7, 0x68

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddfe"

    const/16 v7, 0x69

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udded\ud83c\uddf9"

    const/16 v7, 0x6a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udded\ud83c\uddf3"

    const/16 v7, 0x6b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udded\ud83c\uddf0"

    const/16 v7, 0x6c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udded\ud83c\uddfa"

    const/16 v7, 0x6d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf8"

    const/16 v7, 0x6e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf3"

    const/16 v7, 0x6f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\udde9"

    const/16 v7, 0x70

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf7"

    const/16 v7, 0x71

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf6"

    const/16 v7, 0x72

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddea"

    aput-object v6, v5, v26

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf2"

    const/16 v7, 0x74

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf1"

    const/16 v7, 0x75

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddee\ud83c\uddf9"

    const/16 v7, 0x76

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddef\ud83c\uddf2"

    const/16 v7, 0x77

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddef\ud83c\uddf5"

    const/16 v7, 0x78

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udf8c"

    const/16 v7, 0x79

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddef\ud83c\uddea"

    const/16 v7, 0x7a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddef\ud83c\uddf4"

    const/16 v7, 0x7b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddff"

    const/16 v7, 0x7c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddea"

    const/16 v7, 0x7d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddee"

    const/16 v7, 0x7e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfd\ud83c\uddf0"

    const/16 v7, 0x7f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddfc"

    const/16 v7, 0x80

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddec"

    const/16 v7, 0x81

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\udde6"

    const/16 v7, 0x82

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddfb"

    const/16 v7, 0x83

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\udde7"

    const/16 v7, 0x84

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddf8"

    const/16 v7, 0x85

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddf7"

    const/16 v7, 0x86

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddfe"

    const/16 v7, 0x87

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddee"

    const/16 v7, 0x88

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddf9"

    const/16 v7, 0x89

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddfa"

    const/16 v7, 0x8a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf4"

    const/16 v7, 0x8b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddec"

    const/16 v7, 0x8c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddfc"

    const/16 v7, 0x8d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddfe"

    const/16 v7, 0x8e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddfb"

    const/16 v7, 0x8f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf1"

    const/16 v7, 0x90

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf9"

    const/16 v7, 0x91

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\udded"

    const/16 v7, 0x92

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf6"

    const/16 v7, 0x93

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf7"

    const/16 v7, 0x94

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddfa"

    const/16 v7, 0x95

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfe\ud83c\uddf9"

    const/16 v7, 0x96

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddfd"

    const/16 v7, 0x97

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddeb\ud83c\uddf2"

    const/16 v7, 0x98

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\udde9"

    const/16 v7, 0x99

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\udde8"

    const/16 v7, 0x9a

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf3"

    const/16 v7, 0x9b

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddea"

    const/16 v7, 0x9c

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf8"

    const/16 v7, 0x9d

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\udde6"

    const/16 v7, 0x9e

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddff"

    const/16 v7, 0x9f

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf2"

    const/16 v7, 0xa0

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\udde6"

    const/16 v7, 0xa1

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddf7"

    const/16 v7, 0xa2

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddf5"

    const/16 v7, 0xa3

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddf1"

    const/16 v7, 0xa4

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\udde8"

    const/16 v7, 0xa5

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddff"

    const/16 v7, 0xa6

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddee"

    const/16 v7, 0xa7

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddea"

    const/16 v7, 0xa8

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddec"

    const/16 v7, 0xa9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddfa"

    const/16 v7, 0xaa

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddeb"

    const/16 v7, 0xab

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddf5"

    const/16 v7, 0xac

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf0"

    const/16 v7, 0xad

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf2\ud83c\uddf5"

    const/16 v7, 0xae

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf3\ud83c\uddf4"

    const/16 v7, 0xaf

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf4\ud83c\uddf2"

    const/16 v7, 0xb0

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf0"

    const/16 v7, 0xb1

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddfc"

    const/16 v7, 0xb2

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf8"

    const/16 v7, 0xb3

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\udde6"

    const/16 v7, 0xb4

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddec"

    const/16 v7, 0xb5

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddfe"

    const/16 v7, 0xb6

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddea"

    const/16 v7, 0xb7

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\udded"

    const/16 v7, 0xb8

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf3"

    const/16 v7, 0xb9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf1"

    const/16 v7, 0xba

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf9"

    const/16 v7, 0xbb

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf7"

    const/16 v7, 0xbc

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf6\ud83c\udde6"

    const/16 v7, 0xbd

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf7\ud83c\uddea"

    const/16 v7, 0xbe

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf7\ud83c\uddf4"

    const/16 v7, 0xbf

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf7\ud83c\uddfa"

    const/16 v7, 0xc0

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf7\ud83c\uddfc"

    const/16 v7, 0xc1

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfc\ud83c\uddf8"

    const/16 v7, 0xc2

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf2"

    const/16 v7, 0xc3

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf9"

    const/16 v7, 0xc4

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\uddf6"

    const/16 v7, 0xc5

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\udde6"

    const/16 v7, 0xc6

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf3"

    const/16 v7, 0xc7

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf7\ud83c\uddf8"

    const/16 v7, 0xc8

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\udde8"

    const/16 v7, 0xc9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf1"

    const/16 v7, 0xca

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddec"

    const/16 v7, 0xcb

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddfd"

    const/16 v7, 0xcc

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf0"

    const/16 v7, 0xcd

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddee"

    const/16 v7, 0xce

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\uddf8"

    const/16 v7, 0xcf

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\udde7"

    const/16 v7, 0xd0

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf4"

    const/16 v7, 0xd1

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddff\ud83c\udde6"

    const/16 v7, 0xd2

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddf7"

    const/16 v7, 0xd3

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf8"

    const/16 v7, 0xd4

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\uddf8"

    const/16 v7, 0xd5

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\uddf0"

    const/16 v7, 0xd6

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde7\ud83c\uddf1"

    const/16 v7, 0xd7

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\udded"

    const/16 v7, 0xd8

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf0\ud83c\uddf3"

    const/16 v7, 0xd9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf1\ud83c\udde8"

    const/16 v7, 0xda

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf5\ud83c\uddf2"

    const/16 v7, 0xdb

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\udde8"

    const/16 v7, 0xdc

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\udde9"

    const/16 v7, 0xdd

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddf7"

    const/16 v7, 0xde

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddea"

    const/16 v7, 0xdf

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde8\ud83c\udded"

    const/16 v7, 0xe0

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf8\ud83c\uddfe"

    const/16 v7, 0xe1

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddfc"

    const/16 v7, 0xe2

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddef"

    const/16 v7, 0xe3

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddff"

    const/16 v7, 0xe4

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\udded"

    const/16 v7, 0xe5

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf1"

    const/16 v7, 0xe6

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddec"

    const/16 v7, 0xe7

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf0"

    const/16 v7, 0xe8

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf4"

    const/16 v7, 0xe9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf9"

    const/16 v7, 0xea

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf3"

    const/16 v7, 0xeb

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf7"

    const/16 v7, 0xec

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddf2"

    const/16 v7, 0xed

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\udde8"

    const/16 v7, 0xee

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddf9\ud83c\uddfb"

    const/16 v7, 0xef

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfa\ud83c\uddec"

    const/16 v7, 0xf0

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfa\ud83c\udde6"

    const/16 v7, 0xf1

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udde6\ud83c\uddea"

    const/16 v7, 0xf2

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddec\ud83c\udde7"

    const/16 v7, 0xf3

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f"

    const/16 v7, 0xf4

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc73\udb40\udc63\udb40\udc74\udb40\udc7f"

    const/16 v7, 0xf5

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc77\udb40\udc6c\udb40\udc73\udb40\udc7f"

    const/16 v7, 0xf6

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfa\ud83c\uddf8"

    const/16 v7, 0xf7

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfa\ud83c\uddfe"

    const/16 v7, 0xf8

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\uddee"

    const/16 v7, 0xf9

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfa\ud83c\uddff"

    const/16 v7, 0xfa

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\uddfa"

    const/16 v7, 0xfb

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\udde6"

    const/16 v7, 0xfc

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\uddea"

    const/16 v7, 0xfd

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfb\ud83c\uddf3"

    const/16 v7, 0xfe

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfc\ud83c\uddeb"

    const/16 v7, 0xff

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddea\ud83c\udded"

    const/16 v7, 0x100

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddfe\ud83c\uddea"

    const/16 v7, 0x101

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddff\ud83c\uddf2"

    const/16 v7, 0x102

    aput-object v6, v5, v7

    const-string/jumbo v6, "\ud83c\uddff\ud83c\uddfc"

    const/16 v7, 0x103

    aput-object v6, v5, v7

    aput-object v5, v4, v11

    sput-object v4, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    .line 519
    new-instance v4, Ljava/util/HashMap;

    array-length v1, v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    .line 520
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    .line 521
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashSet;

    .line 522
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v13

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiBigColoredMap:Ljava/util/HashSet;

    .line 523
    new-instance v1, Ljava/util/HashMap;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    move/from16 v0, v27

    .line 542
    :goto_0
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiToFE0F:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 543
    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, v27

    .line 545
    :goto_1
    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataChars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 546
    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 548
    :cond_1
    sget-object v0, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashSet;

    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiColored:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lorg/telegram/messenger/EmojiData;->emojiBigColoredMap:Ljava/util/HashSet;

    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiBigColored:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move/from16 v0, v27

    .line 550
    :goto_2
    sget-object v1, Lorg/telegram/messenger/EmojiData;->aliasNew:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 551
    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    sget-object v3, Lorg/telegram/messenger/EmojiData;->aliasOld:[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v1, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move/from16 v4, v27

    .line 553
    :goto_3
    sget-object v0, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v1, v0

    if-ge v4, v1, :cond_4

    .line 554
    aget-object v1, v0, v4

    if-nez v1, :cond_3

    .line 555
    sget-object v1, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void

    nop

    :array_0
    .array-data 2
        0x2b50s
        0x2600s
        0x26c5s
        0x2601s
        0x26a1s
        0x2744s
        0x26c4s
        0x2614s
        0x2708s
        0x26f5s
        0x2693s
        0x26fds
        0x26f2s
        0x26fas
        0x26eas
        0x2615s
        0x26bds
        0x26bes
        0x26f3s
        0x231as
        0x260es
        0x231bs
        0x2709s
        0x2702s
        0x2712s
        0x270fs
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x2734s
        0x3299s
        0x3297s
        0x26d4s
        0x2b55s
        0x2668s
        0x2757s
        0x203cs
        0x2049s
        0x303ds
        0x26a0s
        0x267bs
        0x2747s
        0x2733s
        0x24c2s
        0x267fs
        0x25b6s
        0x25c0s
        0x27a1s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2197s
        0x2198s
        0x2199s
        0x2196s
        0x2195s
        0x2194s
        0x21aas
        0x21a9s
        0x2934s
        0x2935s
        0x2139s
        0x2714s
        0x2716s
        0x2611s
        0x26aas
        0x26abs
        0x25aas
        0x25abs
        0x2b1bs
        0x2b1cs
        0x25fcs
        0x25fbs
        0x25fes
        0x25fds
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x263as
        0x2639s
        0x270cs
        0x261ds
        0x2764s
        0x2603s
        0x23cfs
        0x2620s
        0x26a7s
        0x2642s
        0x2640s
        0x2695s
        0x2696s
        0x2708s
        0x23s
        0x2as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26f9s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x262es
        0x271ds
        0x262as
        0x2638s
        0x2721s
        0x262fs
        0x2626s
        0x26ces
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x269bs
        0x2622s
        0x2623s
        0x2734s
        0x3299s
        0x3297s
        0x26d4s
        0x274cs
        0x2b55s
        0x2668s
        0x2757s
        0x2755s
        0x2753s
        0x2754s
        0x203cs
        0x2049s
        0x269cs
        0x303ds
        0x26a0s
        0x267bs
        0x2747s
        0x2733s
        0x274es
        0x2705s
        0x27bfs
        0x24c2s
        0x267fs
        0x25b6s
        0x23f8s
        0x23efs
        0x23f9s
        0x23fas
        0x23eds
        0x23ees
        0x23e9s
        0x23eas
        0x25c0s
        0x23ebs
        0x23ecs
        0x27a1s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2197s
        0x2198s
        0x2199s
        0x2196s
        0x2195s
        0x2194s
        0x21aas
        0x21a9s
        0x2934s
        0x2935s
        0x2139s
        0x3030s
        0x27b0s
        0x2714s
        0x2795s
        0x2796s
        0x2797s
        0x2716s
        0xa9s
        0xaes
        0x2122s
        0x2611s
        0x26aas
        0x26abs
        0x25aas
        0x25abs
        0x2b1bs
        0x2b1cs
        0x25fcs
        0x25fbs
        0x25fes
        0x25fds
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x263as
        0x2639s
        0x270as
        0x270cs
        0x270bs
        0x261ds
        0x270ds
        0x26d1s
        0x2764s
        0x2763s
        0x2615s
        0x26bds
        0x26bes
        0x26f3s
        0x26f7s
        0x26f8s
        0x26f9s
        0x231as
        0x2328s
        0x260es
        0x23f1s
        0x23f2s
        0x23f0s
        0x23f3s
        0x231bs
        0x2696s
        0x2692s
        0x26cfs
        0x2699s
        0x26d3s
        0x2694s
        0x2620s
        0x26b0s
        0x26b1s
        0x2697s
        0x26f1s
        0x2709s
        0x2702s
        0x2712s
        0x270fs
        0x2708s
        0x26f5s
        0x26f4s
        0x2693s
        0x26fds
        0x26f2s
        0x26f0s
        0x26fas
        0x26eas
        0x26e9s
        0x2618s
        0x2b50s
        0x2728s
        0x2604s
        0x2600s
        0x26c5s
        0x2601s
        0x26c8s
        0x26a1s
        0x2744s
        0x2603s
        0x26c4s
        0x2602s
        0x2614s
        0x26a7s
        0x23cfs
        0x267es
        0x265fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasEmojiSupportVibration(Ljava/lang/String;)Z
    .locals 1

    .line 538
    invoke-static {p0}, Lorg/telegram/messenger/EmojiData;->isHeartEmoji(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/EmojiData;->isPeachEmoji(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/EmojiData;->isCofinEmoji(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCofinEmoji(Ljava/lang/String;)Z
    .locals 1

    .line 534
    const-string/jumbo v0, "\u26b0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHeartEmoji(Ljava/lang/String;)Z
    .locals 1

    .line 526
    const-string/jumbo v0, "\ud83e\ude77"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u2764"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83e\udde1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83d\udc9b"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83d\udc9a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83e\ude75"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83d\udc99"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83d\udc9c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83d\udda4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83e\ude76"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83e\udd0d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ud83e\udd0e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPeachEmoji(Ljava/lang/String;)Z
    .locals 1

    .line 530
    const-string/jumbo v0, "\ud83c\udf51"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
