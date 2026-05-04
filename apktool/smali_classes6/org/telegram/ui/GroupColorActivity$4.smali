.class Lorg/telegram/ui/GroupColorActivity$4;
.super Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupColorActivity;->openBoostDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/telegram/ui/GroupColorActivity$4;->this$0:Lorg/telegram/ui/GroupColorActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 283
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/GroupColorActivity$4;->this$0:Lorg/telegram/ui/GroupColorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupColorActivity;->-$$Nest$fputisLoading(Lorg/telegram/ui/GroupColorActivity;Z)V

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/GroupColorActivity$4;->this$0:Lorg/telegram/ui/GroupColorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupColorActivity;->-$$Nest$fputisLoading(Lorg/telegram/ui/GroupColorActivity;Z)V

    return-void
.end method
