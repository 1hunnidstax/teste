.class public final Lcom/vungle/publisher/acq$a;
.super Lcom/vungle/publisher/ace$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ace$a",
        "<",
        "Lcom/vungle/publisher/gy;",
        "Lcom/vungle/publisher/acq;",
        "Lcom/vungle/publisher/hd;",
        "Lcom/vungle/publisher/gs;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/abx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/ace$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    new-array v0, p1, [Lcom/vungle/publisher/acq;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/vungle/publisher/acq;

    invoke-direct {v0}, Lcom/vungle/publisher/acq;-><init>()V

    return-object v0
.end method

.method protected final c()Lcom/vungle/publisher/acb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/acb$a",
            "<",
            "Lcom/vungle/publisher/gy;",
            "**>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/acq$a;->g:Lcom/vungle/publisher/abx$a;

    return-object v0
.end method
