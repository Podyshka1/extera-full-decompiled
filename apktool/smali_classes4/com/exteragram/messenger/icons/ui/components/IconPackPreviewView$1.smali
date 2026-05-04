.class Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->startTransition(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

.field final synthetic val$nextIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;Ljava/util/List;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    iput-object p2, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->val$nextIds:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {v1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fgetcurrentIcons(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->val$nextIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {v1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fgetcurrentIconIds(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->val$nextIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {v1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fgetcurrentIconIds(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)[I

    move-result-object v1

    aput p1, v1, v0

    .line 319
    :goto_1
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {v1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fgetcurrentIcons(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {v2}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fgetnextIcons(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 320
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {v1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fgetnextIcons(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$fputanimationProgress(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;F)V

    .line 323
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 324
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView$1;->this$0:Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->-$$Nest$mscheduleNext(Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;)V

    return-void
.end method
