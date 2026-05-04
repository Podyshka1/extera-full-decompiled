.class Lorg/telegram/ui/MemberRequestsActivity$1;
.super Lorg/telegram/ui/Delegates/MemberRequestsDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MemberRequestsActivity;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MemberRequestsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MemberRequestsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;JZ)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/telegram/ui/MemberRequestsActivity$1;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;JZ)V

    return-void
.end method


# virtual methods
.method protected onImportersChanged(Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 27
    iget-object p1, p0, Lorg/telegram/ui/MemberRequestsActivity$1;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    invoke-static {p1}, Lorg/telegram/ui/MemberRequestsActivity;->access$000(Lorg/telegram/ui/MemberRequestsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchFieldText(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onImportersChanged(Ljava/lang/String;ZZ)V

    return-void
.end method
