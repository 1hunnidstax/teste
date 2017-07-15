.class public abstract Lcom/fyber/b/c$a;
.super Ljava/lang/Object;
.source "AdRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/b/c;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/fyber/utils/u;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/fyber/b/c$a;->a:Lcom/fyber/utils/u;

    .line 163
    iput-object p2, p0, Lcom/fyber/b/c$a;->b:Ljava/lang/String;

    .line 164
    return-void
.end method
