.class Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;
.super Ljava/lang/Object;
.source "EightBallPoolBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

.field final synthetic val$currentVersionNumber:Ljava/lang/String;

.field final synthetic val$filesDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;->this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    iput-object p2, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;->val$filesDir:Ljava/io/File;

    iput-object p3, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;->val$currentVersionNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;->val$filesDir:Ljava/io/File;

    const-string v4, "Contents/Resources"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v0, "contRes":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 103
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .line 104
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NSUserDefaults.plist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 103
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v1}, Lcom/miniclip/nativeJNI/cocojava;->deleteDirectory(Ljava/io/File;)V

    goto :goto_1

    .line 112
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    const-string v3, "APP_VERSION_NUMBER"

    iget-object v4, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;->val$currentVersionNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miniclip/nativeJNI/cocojava;->SharedPreferences_setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
