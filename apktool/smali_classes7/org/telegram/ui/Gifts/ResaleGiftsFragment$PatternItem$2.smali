.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$2;
.super Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->set(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;IILorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$2;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 1382
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 1386
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method
