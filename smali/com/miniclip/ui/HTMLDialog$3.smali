.class final Lcom/miniclip/ui/HTMLDialog$3;
.super Ljava/lang/Object;
.source "HTMLDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/HTMLDialog;->showHTMLDialog(Ljava/lang/String;[BIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$isInternalURL:I

.field final synthetic val$webPageData:[B

.field final synthetic val$webpageId:J


# direct methods
.method constructor <init>(Ljava/lang/String;[BIJ)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$baseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$webPageData:[B

    iput p3, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$isInternalURL:I

    iput-wide p4, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$webpageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 299
    new-instance v0, Lcom/miniclip/ui/HTMLDialog;

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$webPageData:[B

    iget v3, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$isInternalURL:I

    iget-wide v4, p0, Lcom/miniclip/ui/HTMLDialog$3;->val$webpageId:J

    invoke-direct/range {v0 .. v5}, Lcom/miniclip/ui/HTMLDialog;-><init>(Ljava/lang/String;[BIJ)V

    .line 300
    .local v0, "dialog":Lcom/miniclip/ui/HTMLDialog;
    invoke-virtual {v0}, Lcom/miniclip/ui/HTMLDialog;->show()V

    .line 301
    return-void
.end method
