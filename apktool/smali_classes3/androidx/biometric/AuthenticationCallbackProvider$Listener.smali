.class abstract Landroidx/biometric/AuthenticationCallbackProvider$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/AuthenticationCallbackProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onError(ILjava/lang/CharSequence;)V
.end method

.method abstract onFailure()V
.end method

.method abstract onHelp(Ljava/lang/CharSequence;)V
.end method

.method abstract onSuccess(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
.end method
