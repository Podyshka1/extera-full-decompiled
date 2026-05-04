.class Lorg/telegram/ui/PhotoAlbumPickerActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(ZZII)V
    .locals 1

    .line 787
    iget-object p4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    if-nez p1, :cond_0

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->-$$Nest$fgetselectedPhotos(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->-$$Nest$fgetselectedPhotosOrder(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p4, v0, p2, p3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->-$$Nest$msendSelectedPhotos(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    :cond_0
    return-void
.end method

.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)Z

    move-result v0

    return v0
.end method

.method public onCaptionChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->-$$Nest$fputcaption(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onOpenInPressed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$onOpenInPressed(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    return-void
.end method

.method public selectedPhotosChanged()V
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->-$$Nest$mupdatePhotosButton(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    return-void
.end method
