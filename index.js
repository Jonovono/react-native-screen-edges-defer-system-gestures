import React, { Component } from "react";
import PropTypes from "prop-types";
import { NativeModules, Platform } from "react-native";

const { RNDeferScreenEdges } = NativeModules;
const isIos = Platform.OS === "ios";

const propTypes = {
    autoHidden: PropTypes.bool.isRequired,
};

export class DeferScreenEdgesView extends Component {


    componentDidMount() {
        if (!isIos) return;
    }

    componentWillUnmount() {
        if (!isIos) return;
    }

    render() {
        return null;
    }
}

HomeIndicator.propTypes = propTypes;

function updateNativeHomeIndicator({ autoHidden = false }) {
    if (autoHidden) {
        RNHomeIndicator.autoHidden();
    } else {
        RNHomeIndicator.alwaysVisible();
    }
}

// keep this for backwards compatibility
const PreferresScreenEdgesDeferringSystemGestures = () => <DeferScreenEdgesView />;
export default PrefersHomeIndicatorAutoHidden;
