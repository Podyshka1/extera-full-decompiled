.class public abstract Lorg/telegram/tgnet/TLRPC$RichText;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RichText"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

.field public text:Lorg/telegram/tgnet/TLRPC$RichText;

.field public texts:Ljava/util/ArrayList;

.field public url:Ljava/lang/String;

.field public webpage_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61661
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 61666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 61709
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    goto :goto_0

    .line 61700
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    goto :goto_0

    .line 61718
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textFixed;-><init>()V

    goto :goto_0

    .line 61703
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    goto :goto_0

    .line 61688
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textUrl;-><init>()V

    goto :goto_0

    .line 61691
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;-><init>()V

    goto :goto_0

    .line 61673
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPhone;-><init>()V

    goto :goto_0

    .line 61679
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textImage;-><init>()V

    goto :goto_0

    .line 61715
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textMarked;-><init>()V

    goto :goto_0

    .line 61685
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;-><init>()V

    goto :goto_0

    .line 61697
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textEmail;-><init>()V

    goto :goto_0

    .line 61694
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    goto :goto_0

    .line 61712
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    goto :goto_0

    .line 61676
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;-><init>()V

    goto :goto_0

    .line 61682
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;-><init>()V

    goto :goto_0

    .line 61706
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textStrike;-><init>()V

    .line 61721
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6407446b -> :sswitch_f
        -0x3ed9dd3c -> :sswitch_e
        -0x3804a1ff -> :sswitch_d
        -0x26ed5a64 -> :sswitch_c
        -0x23c27db1 -> :sswitch_b
        -0x21a5f22a -> :sswitch_a
        -0x12957afc -> :sswitch_9
        0x34b8621 -> :sswitch_8
        0x81ccf4f -> :sswitch_7
        0x1ccb966a -> :sswitch_6
        0x35553762 -> :sswitch_5
        0x3c2884c1 -> :sswitch_4
        0x6724abc4 -> :sswitch_3
        0x6c3f19b9 -> :sswitch_2
        0x744694e0 -> :sswitch_1
        0x7e6260d7 -> :sswitch_0
    .end sparse-switch
.end method
