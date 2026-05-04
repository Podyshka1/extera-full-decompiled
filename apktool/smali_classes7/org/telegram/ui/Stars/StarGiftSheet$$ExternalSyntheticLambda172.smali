.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda172;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$UniqueStarGiftValueInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$UniqueStarGiftValueInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda172;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda172;->f$1:Lorg/telegram/tgnet/tl/TL_stars$UniqueStarGiftValueInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda172;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda172;->f$1:Lorg/telegram/tgnet/tl/TL_stars$UniqueStarGiftValueInfo;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$iTHUX_UEL-LZbV3lzFUOrBpv3lc(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$UniqueStarGiftValueInfo;Landroid/view/View;)V

    return-void
.end method
