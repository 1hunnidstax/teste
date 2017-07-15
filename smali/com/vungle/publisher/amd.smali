.class public final Lcom/vungle/publisher/amd;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# instance fields
.field public final a:Lcom/vungle/publisher/ajt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/vungle/publisher/ajt;

    invoke-direct {v0}, Lcom/vungle/publisher/ajt;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/amd;->a:Lcom/vungle/publisher/ajt;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/amd;->a:Lcom/vungle/publisher/ajt;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajt;->b()V

    .line 37
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/amd;->a:Lcom/vungle/publisher/ajt;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajt;->c()Z

    move-result v0

    return v0
.end method
