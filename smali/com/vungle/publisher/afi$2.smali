.class final Lcom/vungle/publisher/afi$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aif;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aif",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/afi;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afi;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vungle/publisher/afi$2;->a:Lcom/vungle/publisher/afi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 164
    const-string v0, "VunglePrepare"

    const-string v1, "could not prepare viewable after multiple retries"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
