.class public abstract Lcom/google/firebase/FirebaseKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getApp(Lcom/google/firebase/Firebase;)Lcom/google/firebase/FirebaseApp;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    const-string v0, "getInstance(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
