.class public Lorg/telegram/messenger/CodeHighlighting$ColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorSpan"
.end annotation


# instance fields
.field public group:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 110
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$ColorSpan;->group:I

    return-void
.end method


# virtual methods
.method public getColorKey()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/telegram/messenger/CodeHighlighting$ColorSpan;->group:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    .line 121
    :pswitch_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_function:I

    return v0

    .line 120
    :pswitch_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_comment:I

    return v0

    .line 119
    :pswitch_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_number:I

    return v0

    .line 118
    :pswitch_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_string:I

    return v0

    .line 117
    :pswitch_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_constant:I

    return v0

    .line 116
    :pswitch_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_operator:I

    return v0

    .line 115
    :pswitch_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_code_keyword:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/telegram/messenger/CodeHighlighting$ColorSpan;->getColorKey()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
