.class public Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Landroidx/datastore/preferences/protobuf/AbstractParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultInstanceBasedParser"
.end annotation


# instance fields
.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V
    .locals 0

    .line 1566
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/AbstractParser;-><init>()V

    .line 1567
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-void
.end method
