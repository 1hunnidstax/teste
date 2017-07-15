.class final Lcom/miniclip/platform/MCApplication$2;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication;->callOnRequestSelfPermissionResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackNative:J

.field final synthetic val$granted:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 370
    iput-wide p1, p0, Lcom/miniclip/platform/MCApplication$2;->val$callbackNative:J

    iput-boolean p3, p0, Lcom/miniclip/platform/MCApplication$2;->val$granted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/miniclip/platform/MCApplication$2;->val$callbackNative:J

    iget-boolean v2, p0, Lcom/miniclip/platform/MCApplication$2;->val$granted:Z

    # invokes: Lcom/miniclip/platform/MCApplication;->onRequestSelfPermissionResult(JZ)V
    invoke-static {v0, v1, v2}, Lcom/miniclip/platform/MCApplication;->access$100(JZ)V

    .line 373
    return-void
.end method
