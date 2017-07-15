.class public final Lcom/vungle/publisher/cf$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/cf;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/cf;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vungle/publisher/cf$1;->a:Lcom/vungle/publisher/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "VungleDatabase"

    const-string v1, "initializing database vungle"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/cf$1;->a:Lcom/vungle/publisher/cf;

    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    const-string v0, "VungleDatabase"

    const-string v1, "done initializing database vungle"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/cf$1;->a:Lcom/vungle/publisher/cf;

    iget-object v0, v0, Lcom/vungle/publisher/cf;->b:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ci;

    invoke-direct {v1}, Lcom/vungle/publisher/ci;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 129
    return-void
.end method
