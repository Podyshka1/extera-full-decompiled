.class Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;
.super Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;->this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;->this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->-$$Nest$fgetemojiDrawableBounds(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)Landroid/graphics/Rect;

    move-result-object p1

    float-to-int p2, p5

    add-int/2addr p8, p6

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    sub-int p4, p8, p3

    div-int/lit8 p4, p4, 0x2

    int-to-float p6, p3

    add-float/2addr p5, p6

    float-to-int p5, p5

    add-int/2addr p8, p3

    div-int/lit8 p8, p8, 0x2

    invoke-virtual {p1, p2, p4, p5, p8}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
