.class public final Lcom/vungle/publisher/eu;
.super Lcom/vungle/publisher/dx;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/eu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dx",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/adr;",
        "Lcom/vungle/publisher/eo$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/dx;-><init>()V

    return-void
.end method
