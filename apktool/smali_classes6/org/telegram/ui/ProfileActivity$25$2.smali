.class Lorg/telegram/ui/ProfileActivity$25$2;
.super Lorg/telegram/ui/Components/EmojiPacksAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$25;->performLongClick(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$25;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$25;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V
    .locals 0

    .line 5725
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$25$2;->this$1:Lorg/telegram/ui/ProfileActivity$25;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 5728
    invoke-super {p0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    .line 5729
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25$2;->this$1:Lorg/telegram/ui/ProfileActivity$25;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdimBehindView(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method
