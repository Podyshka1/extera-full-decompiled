.class Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/ProfileGalleryView$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;->this$1:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    return-void
.end method

.method public synthetic didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$didSetImageBitmap(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 1359
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;->this$1:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetcallback(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1360
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;->this$1:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetcallback(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onVideoSet()V

    :cond_0
    return-void
.end method
