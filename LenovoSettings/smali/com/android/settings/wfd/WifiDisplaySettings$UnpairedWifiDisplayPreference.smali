.class Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpairedWifiDisplayPreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .line 898
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 900
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 901
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 902
    const v0, 0x7f0a0c80

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setSummary(I)V

    .line 903
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setEnabled(Z)V

    .line 904
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setOrder(I)V

    .line 910
    :goto_0
    invoke-virtual {p0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 911
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setOrder(I)V

    .line 908
    const v0, 0x7f0a06c2

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1700(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 916
    const/4 v0, 0x1

    return v0
.end method