.class Lcom/google/android/material/search/SearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchView;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    .line 188
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/google/android/material/search/SearchView$1;->this$0:Lcom/google/android/material/search/SearchView;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/material/search/SearchView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/material/search/SearchView$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
