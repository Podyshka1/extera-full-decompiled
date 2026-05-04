.class Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/events/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/RestrictedComponentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestrictedPublisher"
.end annotation


# instance fields
.field private final allowedPublishedEvents:Ljava/util/Set;

.field private final delegate:Lcom/google/firebase/events/Publisher;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/firebase/events/Publisher;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;->allowedPublishedEvents:Ljava/util/Set;

    .line 187
    iput-object p2, p0, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;->delegate:Lcom/google/firebase/events/Publisher;

    return-void
.end method
