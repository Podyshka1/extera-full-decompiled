.class Lcom/google/android/material/loadingindicator/LoadingIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/loadingindicator/LoadingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/material/loadingindicator/LoadingIndicator;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator$1;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator$1;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicator;

    invoke-static {v0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->access$000(Lcom/google/android/material/loadingindicator/LoadingIndicator;)V

    return-void
.end method
