.class Lorg/telegram/ui/SessionsActivity$3;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;IZ)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$3;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
