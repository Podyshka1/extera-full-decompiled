.class Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemInfo"
.end annotation


# instance fields
.field iconRes:I

.field name:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;->name:Ljava/lang/CharSequence;

    .line 84
    iput p2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;->iconRes:I

    return-void
.end method
