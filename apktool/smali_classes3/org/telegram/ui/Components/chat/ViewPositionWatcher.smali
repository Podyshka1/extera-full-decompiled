.class public final Lorg/telegram/ui/Components/chat/ViewPositionWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;,
        Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;
    }
.end annotation


# static fields
.field private static tmpRectF2:Landroid/graphics/RectF;


# instance fields
.field private final anchorView:Landroid/view/View;

.field private listening:Z

.field private final tmpRect:Landroid/graphics/RectF;

.field private final tracked:Ljava/util/WeakHashMap;

.field private vto:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRectF2:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tracked:Ljava/util/WeakHashMap;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    .line 53
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->anchorView:Landroid/view/View;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->attachIfPossible()V

    return-void
.end method

.method private attachIfPossible()V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->anchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->anchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iput-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->vto:Landroid/view/ViewTreeObserver;

    .line 101
    iget-boolean v1, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->listening:Z

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->listening:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static computeCoordinatesInParent(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/PointF;)Z
    .locals 1

    .line 177
    sget-object v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRectF2:Landroid/graphics/RectF;

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 179
    sget-object p1, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRectF2:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 180
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_0
    return p0
.end method

.method public static computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z
    .locals 5

    const/4 v0, 0x0

    move-object v2, p0

    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v0, v4

    .line 202
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v1, v4

    .line 204
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 205
    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_0

    return v3

    .line 208
    :cond_0
    check-cast v2, Landroid/view/View;

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 210
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_1
    if-eq v2, p1, :cond_2

    return v3

    .line 222
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v1

    .line 224
    invoke-virtual {p2, v0, v1, p1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public static computeYCoordinateInParent(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 1

    .line 170
    sget-object v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRectF2:Landroid/graphics/RectF;

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    .line 171
    sget-object p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRectF2:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    return p0
.end method

.method private detachIfListening()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->listening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->vto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->listening:Z

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->vto:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method private ensureListening()V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->listening:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->attachIfPossible()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->anchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->vto:Landroid/view/ViewTreeObserver;

    if-eq v0, v1, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->detachIfListening()V

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->attachIfPossible()V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tracked:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tracked:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_0

    .line 150
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;

    .line 151
    iget-object v5, v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->parent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 153
    :cond_5
    iget-boolean v5, v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->hasLast:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    iget-object v6, v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->last:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    :cond_6
    iget-object v5, v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->last:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    iput-boolean v1, v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->hasLast:Z

    .line 157
    :try_start_0
    iget-object v4, v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->listener:Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v4, v3, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;->onPositionChanged(Landroid/view/View;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_7
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->attachIfPossible()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->anchorView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->detachIfListening()V

    :cond_0
    return-void
.end method

.method public subscribe(Landroid/view/View;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;)V
    .locals 2

    .line 62
    new-instance v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;

    invoke-direct {v0, p2, p3}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;)V

    .line 63
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tracked:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_0

    .line 65
    new-instance p3, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tracked:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    .line 71
    iget-object p1, v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher$Tracked;->last:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 74
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->ensureListening()V

    return-void
.end method
