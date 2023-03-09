//
//  CurrentEarningView.swift
//  CodeReview
//
//  Created by Prof K on 3/9/23.
//

import UIKit
import SwiftUI

class CurrentEarningView: UIView {

    private let currentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .blue
        return view
    }()
    
    private lazy var earningTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This year earnings"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return label
    }()
    
    private lazy var totalEarnings: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "N 82,000"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    private lazy var yearly: UIButton = {
        let button = UIButton()
        button.setTitle("Yearly", for: .normal)
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        button.layer.cornerRadius = 10
        button.semanticContentAttribute = .forceRightToLeft
        button.backgroundColor = UIColor(named: "btnColorYearly")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var expensesTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Expenses"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private lazy var expensesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "-N 82,000"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private lazy var divider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var netEarningsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Net Earnings"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private lazy var netEarningsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Net Earnings"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(currentView)
        addEarningsSubViews()
        
        mainViewLayout()
        layoutView()
    }
    
    func addEarningsSubViews() {
        [
            earningTitle, totalEarnings, yearly,
            expensesTitleLabel, expensesLabel, divider,
            netEarningsTitleLabel, netEarningsLabel
        ].forEach { newView in
            currentView.addSubview(newView)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainViewLayout()
        layoutView()
    }
    
    private func mainViewLayout() {
        NSLayoutConstraint.activate([
            currentView.topAnchor.constraint(equalTo: topAnchor),
            currentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            currentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            currentView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    private func layoutView() {
        earningTitleLayout()
        totalEarningsLayout()
        yearlyLayout()
        expensesTitleLabelLayout()
        expensesLabelLayout()
        dividerLayout()
        netEarningsTitleLabelLayout()
        netEarningsLabelLayout()
    }
    
    private func earningTitleLayout() {
        NSLayoutConstraint.activate([
            earningTitle.topAnchor.constraint(equalTo: currentView.topAnchor, constant: 24),
            earningTitle.leadingAnchor.constraint(equalTo: currentView.leadingAnchor, constant: 16),
            earningTitle.widthAnchor.constraint(equalToConstant: 130),
            earningTitle.heightAnchor.constraint(equalToConstant: 16),
            
        ])
        
    }
    
    private func totalEarningsLayout() {
        NSLayoutConstraint.activate([
            totalEarnings.topAnchor.constraint(equalTo: earningTitle.bottomAnchor, constant: 10),
            totalEarnings.leadingAnchor.constraint(equalTo: earningTitle.leadingAnchor),
            totalEarnings.widthAnchor.constraint(equalToConstant: 73),
            totalEarnings.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
    
    private func yearlyLayout() {
        NSLayoutConstraint.activate([
            yearly.topAnchor.constraint(equalTo: totalEarnings.topAnchor),
            yearly.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            yearly.widthAnchor.constraint(equalToConstant: 120),
            yearly.heightAnchor.constraint(equalToConstant: 35),
            
        ])
    }
    
    private func expensesTitleLabelLayout() {
        NSLayoutConstraint.activate([
            expensesTitleLabel.topAnchor
                .constraint(equalTo: totalEarnings.bottomAnchor, constant: 50),
            
            expensesTitleLabel.leadingAnchor.constraint(equalTo: totalEarnings.leadingAnchor),
            expensesTitleLabel.widthAnchor.constraint(equalToConstant: 69),
            expensesTitleLabel.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
    
    private func expensesLabelLayout() {
        NSLayoutConstraint.activate([
            expensesLabel.topAnchor
                .constraint(equalTo: expensesTitleLabel.topAnchor),
            
            expensesLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 14),
            expensesLabel.widthAnchor.constraint(equalToConstant: 56),
            expensesLabel.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
    
    private func dividerLayout() {
        NSLayoutConstraint.activate([
            divider.topAnchor.constraint(equalTo: expensesLabel.bottomAnchor, constant: 15),
            divider.leadingAnchor.constraint(equalTo: expensesTitleLabel.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: expensesLabel.trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 35),
            
        ])
    }
    
    private func netEarningsTitleLabelLayout() {
        NSLayoutConstraint.activate([
            netEarningsTitleLabel.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 15),
            netEarningsTitleLabel.leadingAnchor.constraint(equalTo: divider.leadingAnchor),
            netEarningsTitleLabel.widthAnchor.constraint(equalToConstant: 94),
            netEarningsTitleLabel.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
    
    private func netEarningsLabelLayout() {
        NSLayoutConstraint.activate([
            netEarningsLabel.topAnchor.constraint(equalTo: netEarningsTitleLabel.bottomAnchor, constant: 15),
            netEarningsLabel.trailingAnchor.constraint(equalTo: divider.trailingAnchor),
            netEarningsLabel.widthAnchor.constraint(equalToConstant: 42),
            netEarningsLabel.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct CurrentEarningPreview: PreviewProvider {
    static var previews: some View {
        Container()
            .frame(height: 280)
    }
    
    struct Container: UIViewRepresentable {
        func makeUIView(context: Context) -> some UIView {
            return CurrentEarningView()
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            
        }
    }
}
