.class Landroidx/customview/widget/ViewDragHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 0

    .line 409
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper$3;->this$0:Landroidx/customview/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 412
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper$3;->this$0:Landroidx/customview/widget/ViewDragHelper;

    invoke-static {v0}, Landroidx/customview/widget/ViewDragHelper;->access$000(Landroidx/customview/widget/ViewDragHelper;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
