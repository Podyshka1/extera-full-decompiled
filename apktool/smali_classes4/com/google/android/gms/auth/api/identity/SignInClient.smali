.class public interface abstract Lcom/google/android/gms/auth/api/identity/SignInClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginSignIn(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract getSignInCredentialFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/SignInCredential;
.end method

.method public abstract getSignInIntent(Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract signOut()Lcom/google/android/gms/tasks/Task;
.end method
