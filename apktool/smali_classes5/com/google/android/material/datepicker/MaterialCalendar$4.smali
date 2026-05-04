.class Lcom/google/android/material/datepicker/MaterialCalendar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/MaterialCalendar$OnMonthNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthNavigationNext()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;Z)Z

    move-result v0

    return v0
.end method

.method public onMonthNavigationPrevious()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;Z)Z

    move-result v0

    return v0
.end method
