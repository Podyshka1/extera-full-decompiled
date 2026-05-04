.class Lorg/telegram/ui/ProfileActivity$24;
.super Lorg/telegram/ui/Components/ProfileGalleryView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;JLorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ProfileActivity$AvatarImageView;ILorg/telegram/ui/Components/ProfileGalleryView$Callback;Lorg/telegram/ui/Components/ProfileGalleryBlurView;)V
    .locals 0

    .line 5583
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/Components/ProfileGalleryView;-><init>(Landroid/content/Context;JLorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ProfileActivity$AvatarImageView;ILorg/telegram/ui/Components/ProfileGalleryView$Callback;Lorg/telegram/ui/Components/ProfileGalleryBlurView;)V

    return-void
.end method


# virtual methods
.method protected setCustomAvatarProgress(F)V
    .locals 1

    .line 5586
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;F)V

    .line 5587
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcheckPhotoDescriptionAlpha(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method
