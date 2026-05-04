.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerPosition"
.end annotation


# instance fields
.field private angle:F

.field private position:Lorg/telegram/ui/Components/Point;

.field private scale:F


# direct methods
.method static bridge synthetic -$$Nest$fgetangle(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->angle:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetposition(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->position:Lorg/telegram/ui/Components/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscale(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->scale:F

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Point;FF)V
    .locals 0

    .line 3224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3225
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->position:Lorg/telegram/ui/Components/Point;

    .line 3226
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->scale:F

    .line 3227
    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->angle:F

    return-void
.end method
