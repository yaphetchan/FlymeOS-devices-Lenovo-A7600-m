.class Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 190
    .local v0, "lstView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->access$000(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 191
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->access$000(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 192
    return-void
.end method