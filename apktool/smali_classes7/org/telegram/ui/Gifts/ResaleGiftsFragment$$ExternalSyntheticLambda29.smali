.class public final synthetic Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->$r8$lambda$kHnGPUa-d0k57fW94xErh_hyhsw(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    return-void
.end method
