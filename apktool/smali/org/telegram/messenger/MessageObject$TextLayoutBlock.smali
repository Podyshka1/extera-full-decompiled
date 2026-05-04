.class public Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLayoutBlock"
.end annotation


# static fields
.field public static final FLAG_NOT_RTL:I = 0x2

.field public static final FLAG_RTL:I = 0x1


# instance fields
.field public charactersEnd:I

.field public charactersOffset:I

.field public code:Z

.field public collapsedBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public collapsedHeight:I

.field public copyIcon:Landroid/graphics/drawable/Drawable;

.field public copyIconColor:I

.field public copySelector:Landroid/graphics/drawable/Drawable;

.field public copySelectorColor:I

.field public copySeparator:Landroid/graphics/Paint;

.field public copyText:Lorg/telegram/ui/Components/Text;

.field public directionFlags:B

.field public first:Z

.field public hasCodeCopyButton:Z

.field public height:I

.field public index:I

.field public language:Ljava/lang/String;

.field public languageHeight:I

.field public languageLayout:Lorg/telegram/ui/Components/Text;

.field public last:Z

.field public maxRight:F

.field public messageObject:Lorg/telegram/messenger/MessageObject;

.field public originalWidth:I

.field public padBottom:I

.field public padTop:I

.field public quote:Z

.field public quoteCollapse:Z

.field public spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field public spoilersPatchedTextLayout:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field public start:I

.field public textLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilersPatchedTextLayout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilers:Ljava/util/List;

    return-void
.end method

.method private static capitalizeFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static capitalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1089
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\W|lang$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "objectivec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x38

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "markdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x37

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "autohotkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x36

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x35

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "swift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x34

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "json5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x33

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "cobol"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x32

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "yaml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x31

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "wasm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x30

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "tl-b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x2f

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "scss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x2e

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "rust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x2d

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "ruby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x2c

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "objc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x2b

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "nasm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "less"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "hlsl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "glsl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "fift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "dart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "yml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v1, "tsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v1, "tlb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v1, "php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v1, "lua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v1, "jsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "ini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "csv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "cpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "asm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v1, "ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v1, "tl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v1, "rb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v1, "py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v1, "md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v1, "js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "go"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v1, "typescript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "arduino"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v1, "python"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_0

    :cond_32
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_32
    const-string/jumbo v1, "pascal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_0

    :cond_33
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_33
    const-string/jumbo v1, "kotlin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_0

    :cond_34
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_34
    const-string v1, "dockerfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_0

    :cond_35
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_35
    const-string v1, "docker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_0

    :cond_36
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_36
    const-string v1, "csharp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_0

    :cond_37
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_37
    const-string v1, "aspnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_0

    :cond_38
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_38
    const-string v1, "actionscript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_0

    :cond_39
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object p0

    .line 1110
    :pswitch_0
    const-string p0, "AutoHotKey"

    return-object p0

    .line 1099
    :pswitch_1
    const-string p0, "Objective-C"

    return-object p0

    .line 1158
    :pswitch_2
    const-string p0, "FunC"

    return-object p0

    .line 1156
    :pswitch_3
    const-string p0, "TL-B"

    return-object p0

    .line 1111
    :pswitch_4
    const-string p0, "C++"

    return-object p0

    .line 1105
    :pswitch_5
    const-string p0, "Ruby"

    return-object p0

    .line 1102
    :pswitch_6
    const-string p0, "Markdown"

    return-object p0

    .line 1093
    :pswitch_7
    const-string p0, "JavaScript"

    return-object p0

    .line 1153
    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1096
    :pswitch_9
    const-string p0, "TypeScript"

    return-object p0

    .line 1108
    :pswitch_a
    const-string p0, "Python"

    return-object p0

    .line 1129
    :pswitch_b
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->capitalizeFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1114
    :pswitch_c
    const-string p0, "C#"

    return-object p0

    .line 1115
    :pswitch_d
    const-string p0, "ASP.NET"

    return-object p0

    .line 1109
    :pswitch_e
    const-string p0, "ActionScript"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7070b17f -> :sswitch_38
        -0x53f0c9a1 -> :sswitch_37
        -0x508aea99 -> :sswitch_36
        -0x4f1091e0 -> :sswitch_35
        -0x4e84ac64 -> :sswitch_34
        -0x4316e6ff -> :sswitch_33
        -0x3b548c14 -> :sswitch_32
        -0x3a01cf24 -> :sswitch_31
        -0x2c831fd8 -> :sswitch_30
        -0x1f21737b -> :sswitch_2f
        0x63 -> :sswitch_2e
        0x72 -> :sswitch_2d
        0xc70 -> :sswitch_2c
        0xce8 -> :sswitch_2b
        0xd49 -> :sswitch_2a
        0xd97 -> :sswitch_29
        0xe09 -> :sswitch_28
        0xe30 -> :sswitch_27
        0xe78 -> :sswitch_26
        0xe7f -> :sswitch_25
        0x17a7b -> :sswitch_24
        0x181a3 -> :sswitch_23
        0x18203 -> :sswitch_22
        0x18206 -> :sswitch_21
        0x197e4 -> :sswitch_20
        0x19c4f -> :sswitch_1f
        0x1a3f8 -> :sswitch_1e
        0x1b178 -> :sswitch_1d
        0x1c0ea -> :sswitch_1c
        0x1c1d9 -> :sswitch_1b
        0x1d017 -> :sswitch_1a
        0x1d3d8 -> :sswitch_19
        0x2eef7f -> :sswitch_18
        0x2ff4d1 -> :sswitch_17
        0x3022c4 -> :sswitch_16
        0x3075fe -> :sswitch_15
        0x30ea5d -> :sswitch_14
        0x3107ab -> :sswitch_13
        0x310888 -> :sswitch_12
        0x31aa22 -> :sswitch_11
        0x31ece8 -> :sswitch_10
        0x32a199 -> :sswitch_f
        0x337b4d -> :sswitch_e
        0x33f24c -> :sswitch_d
        0x3595da -> :sswitch_c
        0x3597e4 -> :sswitch_b
        0x35c8b0 -> :sswitch_a
        0x36564d -> :sswitch_9
        0x3792a4 -> :sswitch_8
        0x387aa7 -> :sswitch_7
        0x5a709d3 -> :sswitch_6
        0x60bb04d -> :sswitch_5
        0x68c3e13 -> :sswitch_4
        0xb43d96d -> :sswitch_3
        0xcc12961 -> :sswitch_2
        0xeb7fcef -> :sswitch_1
        0x3fa06e4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public collapsed(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 4

    .line 993
    iget-boolean v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateExpandedQuotes:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateExpandedQuotesFrom:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsed()Z

    move-result v1

    :goto_0
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    .line 994
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsed()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    iget p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    invoke-static {v1, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    return p1
.end method

.method public collapsed()Z
    .locals 2

    .line 998
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->expandedQuotes:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public drawCopyCodeButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIF)V
    .locals 14

    move-object/from16 v0, p2

    move/from16 v4, p3

    .line 1047
    iget-boolean v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->hasCodeCopyButton:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x3dcccccd    # 0.1f

    .line 1051
    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 1052
    iget v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelectorColor:I

    if-eq v2, v1, :cond_1

    .line 1053
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelector:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelectorColor:I

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 1055
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelector:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1056
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelector:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1057
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1058
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1061
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySeparator:Landroid/graphics/Paint;

    const/16 v3, 0x26

    move/from16 v6, p4

    invoke-static {v6, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1062
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v7, v1, v3

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v1, v3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const v3, 0x40d51eb8    # 6.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v9, v1, v3

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v10, v1, v3

    iget-object v11, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySeparator:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1065
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    iget-object v10, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v10

    add-float/2addr v7, v10

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1066
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v3, v10

    sub-float/2addr v7, v11

    .line 1067
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    sub-float/2addr v0, v5

    .line 1069
    iget v5, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIconColor:I

    if-eq v5, v4, :cond_3

    .line 1070
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    iput v4, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIconColor:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v4, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1072
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1073
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    float-to-int v5, v7

    .line 1075
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    div-float/2addr v11, v10

    sub-float v11, v0, v11

    float-to-int v11, v11

    iget-object v12, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    .line 1076
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    float-to-int v12, v12

    iget-object v13, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    .line 1077
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    div-float/2addr v13, v10

    add-float/2addr v13, v0

    float-to-int v10, v13

    .line 1073
    invoke-virtual {v2, v5, v11, v12, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1079
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1081
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    add-float/2addr v2, v7

    .line 1082
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyText:Lorg/telegram/ui/Components/Text;

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    .line 1083
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    sub-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    move-object v1, v3

    move v3, v0

    move-object v0, v1

    move-object v1, p1

    move/from16 v5, p5

    .line 1084
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    return-void
.end method

.method public height()I
    .locals 1

    .line 983
    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quoteCollapse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedHeight:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    return v0
.end method

.method public height(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 2

    .line 987
    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quoteCollapse:Z

    if-nez v0, :cond_0

    .line 988
    iget p1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    return p1

    .line 989
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    iget v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedHeight:I

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsed(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    return p1
.end method

.method public heightCollapsed()I
    .locals 1

    .line 979
    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quoteCollapse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedHeight:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    return v0
.end method

.method public isRtl()Z
    .locals 2

    .line 1168
    iget-byte v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public layoutCode(Ljava/lang/String;IZ)V
    .locals 5

    const/16 v0, 0x4b

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p2, v0, :cond_0

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    .line 1024
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->hasCodeCopyButton:Z

    if-eqz p3, :cond_1

    .line 1026
    new-instance p3, Lorg/telegram/ui/Components/Text;

    sget v0, Lorg/telegram/messenger/R$string;->CopyCode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {p3, v0, v3, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyText:Lorg/telegram/ui/Components/Text;

    .line 1027
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIcon:Landroid/graphics/drawable/Drawable;

    .line 1028
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copyIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1029
    iget p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelectorColor:I

    const/4 v0, 0x5

    sget v3, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, v2, v2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySelector:Landroid/graphics/drawable/Drawable;

    .line 1030
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->copySeparator:Landroid/graphics/Paint;

    .line 1032
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    .line 1033
    iput-object p1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->language:Ljava/lang/String;

    .line 1034
    iput-object p1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageLayout:Lorg/telegram/ui/Components/Text;

    return-void

    .line 1037
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->language:Ljava/lang/String;

    .line 1038
    new-instance p3, Lorg/telegram/ui/Components/Text;

    .line 1039
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->capitalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    sub-int/2addr v0, v1

    .line 1040
    invoke-static {p2}, Lorg/telegram/messenger/CodeHighlighting;->getTextSizeDecrement(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    .line 1041
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageLayout:Lorg/telegram/ui/Components/Text;

    .line 1043
    invoke-virtual {p3}, Lorg/telegram/ui/Components/Text;->getTextSize()F

    move-result p1

    const p2, 0x3fdb645a    # 1.714f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageHeight:I

    return-void
.end method

.method public textYOffset(Ljava/util/ArrayList;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;)F"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1004
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1005
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    if-ne v2, p0, :cond_1

    goto :goto_1

    .line 1007
    :cond_1
    iget v3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    int-to-float p1, v1

    return p1
.end method

.method public textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;",
            "Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;",
            ")F"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1015
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1016
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    if-ne v2, p0, :cond_1

    goto :goto_1

    .line 1018
    :cond_1
    iget v3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I

    move-result v4

    add-int/2addr v3, v4

    iget v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    int-to-float p1, v1

    return p1
.end method
