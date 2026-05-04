.class Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->options()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

.field final synthetic val$dimView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$5;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iput-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$5;->val$dimView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$5;->val$dimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method
