.class Lorg/telegram/ui/CameraScanActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CameraScanActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CameraScanActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity$5;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectPhotos(Ljava/util/ArrayList;ZI)V
    .locals 9

    .line 692
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 693
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    .line 694
    iget-object p2, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 695
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p2

    .line 696
    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, p2, v0}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 697
    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$5;->this$0:Lorg/telegram/ui/CameraScanActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/CameraScanActivity;->-$$Nest$mtryReadQr(Lorg/telegram/ui/CameraScanActivity;[BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 699
    iget-object p2, p0, Lorg/telegram/ui/CameraScanActivity$5;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p2}, Lorg/telegram/ui/CameraScanActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 700
    iget-object p2, p0, Lorg/telegram/ui/CameraScanActivity$5;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p2}, Lorg/telegram/ui/CameraScanActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;

    invoke-interface {p2, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 702
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$5;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 707
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public startPhotoSelectActivity()V
    .locals 3

    .line 714
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity$5;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 718
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
